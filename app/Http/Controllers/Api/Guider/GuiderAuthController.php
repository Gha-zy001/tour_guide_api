<?php

namespace App\Http\Controllers\Api\Guider;

use App\Http\Controllers\Controller;
use App\Models\Guider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterGuiderRequest;
use App\Http\Requests\LoginGuiderRequest;
use App\Services\TwilioService;

class GuiderAuthController extends Controller
{

  protected $twilioService;

  public function __construct(TwilioService $twilioService)
  {
    $this->twilioService = $twilioService;
  }

  public function register(RegisterGuiderRequest $request)
  {
    $request->validated();

    $verificationCode = rand(100000, 999999);

    $guider = Guider::create([
      'name' => $request->name,
      'email' => $request->email,
      'phone_number' => $request->phone_number,
      'national_id' => $request->national_id,
      'password' => Hash::make($request->password),
      'verification_code' => $verificationCode,
      'description' =>$request->description,
    ]);

    try {
      // Send SMS with the verification code
      $this->twilioService->sendSms($guider->phone_number, 'Your OTP is ' . $verificationCode);
    } catch (\Exception $e) {
      $guider->delete(); // Cleanup the created guider record if SMS sending fails
      return response()->json(['message' => 'Registration failed. Could not send OTP.'], 500);
    }

    return response()->json([
      'message' => 'Registration successful, please verify your phone number',
      'phone' => $guider->phone_number,
    ], 201);
  }

  public function verifyOtp(Request $request)
  {
    $request->validate([
      'phone_number' => 'required|string',
      'verification_code' => 'required|numeric',
    ]);

    $guider = Guider::where('phone_number', $request->phone_number)->first();

    if (!$guider || $guider->verification_code != $request->verification_code) {
      return response()->json(['message' => 'Invalid OTP'], 401);
    }

    $guider->is_verified = true;
    $guider->verification_code = null;
    $guider->save();

    return response()->json(['message' => 'Phone number verified successfully'], 200);
  }


  public function login(LoginGuiderRequest $request)
  {
    $request->validated();

    $guider = Guider::where('email', $request->email)->first();

    if (!$guider || !Hash::check($request->password, $guider->password)) {
      return response()->json(['message' => 'Credentials do not match'], 401);
    }

    $token = $guider->createToken('Guider Token')->plainTextToken;

    return response()->json([
      'user' => $guider,
      'token' => $token,
      'message' => 'Login successful',
      'is_verified' => $guider->is_verified,
    ], 200);
  }

  public function logout(Request $request)
  {
    $request->user()->tokens()->delete();

    return response()->json(['message' => 'You have successfully logged out and your token has been deleted'], 200);
  }
}

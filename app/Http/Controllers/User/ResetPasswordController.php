<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\ResetPasswordRequest;
use App\Models\User;
// use Ichtrojan\Otp\Models\Otp;
use Ichtrojan\Otp\Otp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class ResetPasswordController extends Controller
{
  private $otp;
  // private $email;
  public function __construct()
  {
    $this->otp = new Otp;
  }
  public function reset(ResetPasswordRequest $request)
  {
    $otp2 = $this->otp->validate($request->email, $request->otp);
    if (!$otp2->status) {
      return response()->json(['error' => $otp2], 401);
    }
    $user = User::where('email', $request->email)->first();
    $user->update(['password' => Hash::make($request->password)]);
    $user->tokens()->delete();
    $success['success'] = true;
    return response()->json($success, 200);
  }

  public function resets(Request $request)
  {
    return ' خخخخخخخخخخخخخخ افتح ال reset password';
  }
}

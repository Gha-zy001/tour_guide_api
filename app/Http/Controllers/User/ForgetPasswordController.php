<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Notifications\ResetPasswordNotification as ReserPassword;
use App\Models\User;
use Ichtrojan\Otp\Models\Otp;
use App\Traits\ApiTrait;

class ForgetPasswordController extends Controller
{
  public function fogotPassword(Request $request)
  {

    $request->validate([
      'email' => 'required|email',
    ]);
    $input = $request->only('email');
    $user = User::where('email', $input)->first();
    $user->notify(new ReserPassword());
    $token = Otp::where('identifier', $request['email'])
      ->where('valid', '=', 1)
      ->get('token');
    // $success['success'] = true;
    return ApiTrait::data(compact('token'), "success", 200);
  }
}

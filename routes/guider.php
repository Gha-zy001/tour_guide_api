<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\Guider\GuiderAuthController;




Route::prefix('guider')->group(function () {
  Route::post('/register', [GuiderAuthController::class, 'register']);
  Route::post('/login', [GuiderAuthController::class, 'login']);
  Route::post('/verify-otp', [GuiderAuthController::class, 'verifyOtp']);

  Route::middleware('auth:sanctum')->group(function () {
      Route::post('/logout', [GuiderAuthController::class, 'logout']);
  });
});
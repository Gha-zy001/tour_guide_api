<?php

use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\User\AuthController;
use App\Models\Place;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::prefix('user')->group(function () {
  Route::post('/register', [AuthController::class, 'register']);
  Route::post('/login', [AuthController::class, 'login']);
  Route::post('/logout', [AuthController::class, 'logout']);

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'place', 'controller' => PlaceController::class], function () {
    //Routes
  });

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'hotel', 'controller' => HotelController::class], function () {
    //Routes
  });
});


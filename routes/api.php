<?php

use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\User\AuthController;
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

Route::get('/register',[AuthController::class, 'register']);
Route::get('/login',[AuthController::class, 'login']);
Route::get('/logout',[AuthController::class, 'logout']);

Route::resource('/places', PlaceController::class);
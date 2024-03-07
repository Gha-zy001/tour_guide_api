<?php

use App\Http\Controllers\Api\User\ContactController;
use App\Http\Controllers\Api\user\HotelController;
use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\Api\User\TripController;
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

    Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);

    //place routes
    Route::group(['prefix' => 'place', 'controller' => PlaceController::class], function () {
        Route::get('/', 'index');
        Route::get('/show/{place}', 'show');
    });

    //trip routes
    Route::group(["middleware" => "auth:sanctum", 'prefix' => 'trip', 'controller' => TripController::class], function () {
        Route::get('/get-trip/{id}', 'getTrip');
        Route::get('/get-trips/{userId}', 'getTrips');
        Route::post('/create-trip', 'createTrip');
        Route::put('/update-trip/{id}', 'updateTrip');
        Route::delete('/delete-trip/{id}', 'deleteTrip');

    });

    //contact routes
    Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'contact', 'controller' => contactController::class], function () {
        Route::get('/get-contact/{id}', 'getContact');
        Route::get('/get-contacts', 'getContacts');
    });

    //hotel routes
    Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'hotel', 'controller' => HotelController::class], function () {
        //Routes
        Route::get('/get-hotel/{hotelId}', 'getHotel');
        Route::get('/get-hotels', 'getHotels');
    });
});

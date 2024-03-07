<?php

use App\Http\Controllers\Api\User\ContactController;
use App\Http\Controllers\Api\user\HotelController;
use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\Api\User\TripController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\FavoriteController;
use App\Http\Controllers\Api\User\ReviewController;
use App\Http\Controllers\User\AuthController;
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

    //Place routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'place', 'controller' => PlaceController::class], function () {
    Route::get('/', 'index');
    Route::get('/show/{place}', 'show');
  });

    //Favorite routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'favorite', 'controller' => FavoriteController::class], function () {
    Route::get('/getFavorites', 'getFavorites');
    Route::post('/add/{favoritableType}/{favoritableId}', 'addtoFavorites');
    Route::post('/delete/{favoritableId}', 'deleteFavorites');
  });

    //Review routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'review', 'controller' => ReviewController::class], function () {
    Route::post('/makeReview/{reviewable_type}/{reviewable_id}', 'createReview');
    Route::get('/getPlaceReview/{place_id}', 'getPlaceReviews');
    Route::get('/getHotelReview/{hotel_id}', 'getHotelReviews');
  });

  //Trip routes
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
    Route::get('/get-hotel/{hotelId}', 'getHotel');
    Route::get('/get-hotels', 'getHotels');
  });
});

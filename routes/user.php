<?php

use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\Api\User\TripController;
use App\Http\Controllers\User\AuthController;
use App\Models\Favorite;
use App\Models\Place;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\FavoriteController;
use App\Http\Controllers\Api\User\ReviewController;
use App\Models\Review;

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

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'place', 'controller' => PlaceController::class], function () {
    Route::get('/', 'index');
    Route::get('/show/{place}', 'show');
  });

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'favorite', 'controller' => FavoriteController::class], function () {
    Route::get('/getFavorites', 'getFavorites');
    Route::post('/add/{favoritableType}/{favoritableId}', 'addtoFavorites');
    Route::post('/delete/{favoritableId}', 'deleteFavorites');
  });


  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'review', 'controller' => ReviewController::class], function () {
    Route::post('/makeReview/{reviewable_type}/{reviewable_id}', 'createReview');
    Route::get('/getPlaceReview/{place_id}', 'getPlaceReviews');
    Route::get('/getHotelReview/{hotel_id}', 'getHotelReviews');
  });
});

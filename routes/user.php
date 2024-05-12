<?php

use App\Http\Controllers\Api\HotelController as ApiHotelController;
use App\Http\Controllers\Api\User\ContactController;
use App\Http\Controllers\Api\user\HotelController;
use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\Api\User\TripController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\FavoriteController;
use App\Http\Controllers\Api\User\HomeController;
use App\Http\Controllers\Api\User\ProfileUpdateController;
use App\Http\Controllers\Api\User\RecommendationController;
use App\Http\Controllers\Api\User\ReviewController;
use App\Http\Controllers\Api\User\SearchController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\ForgetPasswordController;
use App\Http\Controllers\User\ResetPasswordController;

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
  //Auth
  Route::post('/register', [AuthController::class, 'register']);
  Route::post('/login', [AuthController::class, 'login']);
  Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);
  Route::middleware('auth:sanctum')->post('/edit_profile', [ProfileUpdateController::class, 'editProfile']);
  Route::middleware('auth:sanctum')->get('/show_profile', [ProfileUpdateController::class, 'show']);

  //Reset_Password
  Route::post('/forgot_password', [ForgetPasswordController::class, 'fogotPassword']);
  Route::put('/reset_password', [ResetPasswordController::class, 'reset']);
  Route::put('/reset_pass', [ResetPasswordController::class, 'resets']);


  Route::middleware('auth:sanctum')->get('/recommended', [RecommendationController::class, 'recommendPlaces']);
  Route::middleware('auth:sanctum')->get('/home', [HomeController::class, 'homeContent']);
  Route::get('/search_hotels', [SearchController::class, 'searchHotels']);
  Route::get('/search_places', [SearchController::class, 'searchPlace']);
  // Route::get('/search', [SearchController::class, 'search']);

  //Place routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'place', 'controller' => PlaceController::class], function () {
    Route::get('/', 'index');
    Route::get('/show/{place}', 'show');
    Route::get('/{stateName}', 'getPlacesByState');
    // Route::get('/search', 'search');
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
    Route::get('/get-trip', 'getTrip');
    Route::post('/create-trip', 'createTrip');
    Route::post('/update-trip/{id}', 'updateTrip');
    Route::post('/delete-trip/{id}', 'deleteTrip');
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
    Route::get('/{stateName}', 'getHotelsByState');
  });
});

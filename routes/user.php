<?php

use App\Http\Controllers\Api\Guider\GuiderController;
use App\Http\Controllers\Api\User\PlaceController;
use App\Http\Controllers\Api\User\TripController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\FavoriteController;
use App\Http\Controllers\Api\User\HomeController;
use App\Http\Controllers\Api\User\HoteelController;
use App\Http\Controllers\Api\User\ProfileUpdateController;
use App\Http\Controllers\Api\User\RecommendationController;
use App\Http\Controllers\Api\User\ReviewController;
use App\Http\Controllers\BankController;
use App\Http\Controllers\ResturauntController;
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

  //Place routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'place', 'controller' => PlaceController::class], function () {
    Route::get('/', 'index');
    Route::get('/show/{place}', 'show');
    Route::get('/{stateName}', 'getPlacesByState');
  });

  //Favorite routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'favorite', 'controller' => FavoriteController::class], function () {
    Route::get('/getFavorites', 'getFavorites');
    Route::post('/add/{favoritableType}/{favoritableId}', 'addtoFavorites');
    Route::post('/delete/{favoritableId}', 'deleteFavorites');
    Route::get('/places_fav', 'places_fav');
    Route::get('/hotels_fav', 'hotels_fav');
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
    Route::post('/upload-images/{tripId}', 'uploadImages');
    Route::post('/delete-trip/{id}', 'deleteTrip');
    Route::get('/specific-trip/{tripId}', 'specificTrip');
  });
  //hotel routes
  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'hotel', 'controller' => HoteelController::class], function () {
    Route::get('/get-hotel/{hotelId}', 'getHotel');
    Route::get('/get-hotels', 'getHotels');
    Route::get('/{stateName}', 'getHotelsByState');
  });

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'bank', 'controller' => BankController::class], function () {
    Route::get('/get-bank/{BankId}', 'getBank');
    Route::get('/get-banks', 'getBanks');
    Route::get('/{stateName}', 'getBanksByState');
  });

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'resturant', 'controller' => ResturauntController::class], function () {
    Route::get('/get-resturant/{ResturantId}', 'getResturant');
    Route::get('/get-resturants', 'getResturants');
    Route::get('/{stateName}', 'getResturantsByState');
  });

  Route::group(['middleware' => 'auth:sanctum', 'prefix' => 'guider_data', 'controller' => GuiderController::class], function () {
    Route::get('/guider_all_data', 'guider_data');
    Route::get('/guider_specific/{guider_id}', 'guider');
  });
});

<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\HotelResource;
use App\Http\Resources\PlaceResource;
use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Models\Place;
use App\Traits\ApiTrait;
use App\Models\State;
use Illuminate\Support\Facades\Cache;

class PlaceController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    try {
      // $placesCacheKey = 'places.all';
      // $hotelsCacheKey = 'hotels.all';
      // $cacheDuration = 60; // 1 hour
      // $places = Cache::remember($placesCacheKey, $cacheDuration, function () {
      //   return Place::all();
      // });
      // $hotels = Cache::remember($hotelsCacheKey, $cacheDuration, function () {
      //   return Hotel::all();
      // });
      $places = Place::paginate();
      $hotels = Hotel::paginate();
      if (count($places) > 0) {
        $allPlaces = PlaceResource::collection($places);
        $allhotels = HotelResource::collection($hotels);
        return ApiTrait::data(compact('allPlaces', 'allhotels'));
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Places Yet', 422);
    }
  }

  /**
   * Display the specified resource.
   */
  public function show($place)
  {
    $specificPlace = Place::find($place);
    try {
      if ($specificPlace) {
        $placeById = new PlaceResource($specificPlace);
        return ApiTrait::data(compact('placeById'));
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Places Yet', 422);
    }
  }

  public function getPlacesByState($stateName)
  {

    try {
      $state = State::where('name', $stateName)->first();
      $stateId = $state->id;
      if (!$state) {
        return response()->json(['error' => 'State not found'], 404);
      }

      $places = Place::where('state_id', $stateId)->paginate(10);
      $places = PlaceResource::collection($places);
      return ApiTrait::data(compact('places'));
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

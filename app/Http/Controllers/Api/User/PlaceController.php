<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\HotelResource;
use App\Http\Resources\PlaceResource;
use App\Models\Hotel;
use App\Models\Place;
use App\Traits\ApiTrait;
use App\Models\State;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class PlaceController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    try {
      $cacheKey = 'places_hotels_index';

      $cachedData = Cache::remember($cacheKey, now()->addMinutes(10), function () {
          $places = Place::paginate();
          $hotels = Hotel::paginate();

          if (count($places) > 0) {
              $allPlaces = PlaceResource::collection($places);
              $allhotels = HotelResource::collection($hotels);
              return compact('allPlaces', 'allhotels');
          }

          return null;
      });

      // Check if data was cached and returned successfully
      if ($cachedData) {
          return ApiTrait::data($cachedData);
      }

      return ApiTrait::errorMessage([], 'No Places Yet', 422);

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

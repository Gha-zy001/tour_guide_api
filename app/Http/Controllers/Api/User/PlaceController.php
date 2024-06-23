<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\HotelResource;
use App\Http\Resources\PlaceResource;
use App\Models\Bank;
use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use App\Models\State;
use App\Models\Place;
use Illuminate\Support\Facades\Cache;

class PlaceController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    try {
      $cacheKey = 'placesHotels.all';
      Cache::rememberForever($cacheKey, function () {
        $places = Place::all();
        $hotels = Hotel::all();
        if ($places->isNotEmpty() || $hotels->isNotEmpty()) {
          $allPlaces = $places->map(function ($place) {
            return [
              'id' => $place->id,
              'name' => $place->name,
              'description' => $place->description,
              'address' => $place->address,
              'img_url' => $place->images->pluck('data'),
            ];
          });
          $allHotels = $hotels->map(function ($hotels) {
            return [
              'id' => $hotels->id,
              'name' => $hotels->name,
              'address' => $hotels->address,
              'img_url' => $hotels->images->pluck('data'),
            ];
          });
          return compact('allPlaces', 'allHotels');
        }


        return null;
      });
      return Cache::get('placesHotels.all');


      return ApiTrait::errorMessage([], 'No Places or Hotels Available', 422);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'An error occurred', 500);
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

  public function getPlacesByState(Request $request, $stateName)
  {

    try {
      $cacheKey = 'places.state.' . $stateName;

      $places = Cache::rememberForever($cacheKey, function () use ($stateName, $request) {
        $state = State::where('name', $stateName)->first();
        if (!$state) {
          return response()->json(['error' => 'State not found'], 404);
        }

        $places = Place::where('state_id', $state->id)
          ->with([
            'images' => function ($query) {
              $query->select('data', 'place_id');
            }
          ])
          ->get(['id', 'state_id', 'name', 'description', 'address']);

        $placesArray = $places->map(function ($place) use ($request){
          
          return [
            'id' => $place->id,
            'state_id' => $place->state_id,
            'name' => $place->name,
            'description' => $place->description,
            'address' => $place->address,
            'img_url' => $place->images->pluck('data')->toArray(),
          ];
        })->toArray();

        return $placesArray;
      });
      $places = Cache::get('places.state.' . $stateName);      
      return compact('places');

      // $state = State::where('name', $stateName)->first();
      // $stateId = $state->id;
      // if (!$state) {
      //   return response()->json(['error' => 'State not found'], 404);
      // }

      // $places = Place::where('state_id', $stateId)->paginate(10);
      // $places = PlaceResource::collection($places);
      // return ApiTrait::data(compact('places'));
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

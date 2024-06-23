<?php

namespace App\Http\Controllers;

use App\Http\Resources\ResturauntResource;
use App\Models\Resturaunt;
use App\Models\State;
use App\Traits\ApiTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ResturauntController extends Controller
{
  public function getResturants()
  {
    try {
      $Resturants = Resturaunt::all();
      $Resturants = Resturaunt::paginate(10);
      if ($Resturants->count() > 0) {
        $allResturants = ResturauntResource::collection($Resturants);
        return ApiTrait::data(compact('allResturants'), 'Resturants Fetched Successfully', 200);
      }
      return ApiTrait::errorMessage([], 'No Resturants Yet', 404);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  // get Resturant by id
  public function getResturant($id)
  {
    if (!is_numeric($id)) {
      return ApiTrait::errorMessage([], 'Invalid Resturant Id', 400);
    }
    try {
      $Resturant = Resturaunt::find($id);
      if (!$Resturant) {
        return ApiTrait::errorMessage([], 'Resturant Not Found', 404);
      }
      return ResturauntResource::collection([$Resturant]);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  public function getResturantsByState($stateName)
  {
    try {
      $cacheKey = 'resturants.state.' . $stateName;

      $resturants = Cache::rememberForever($cacheKey, function () use ($stateName) {
        $state = State::where('name', $stateName)->first();
        if (!$state) {
          return response()->json(['error' => 'State not found'], 404);
        }

        $resturants = Resturaunt::where('state_id', $state->id)
          ->with([
            'images' => function ($query) {
              $query->select('data', 'resturant_id');
            }
          ])
          ->get(['id', 'state_id', 'name', 'rate', 'address']);

        $resturantsArray = $resturants->map(function ($resturants) {

          return [
            'id' => $resturants->id,
            'state_id' => $resturants->state_id,
            'name' => $resturants->name,
            'rate' => $resturants->rate,
            'address' => $resturants->address,
            'img_url' => $resturants->images->pluck('data'),

          ];
        })->toArray();

        return $resturantsArray;
      });
      $places = Cache::get('resturants.state.' . $stateName);
      return compact('resturants');
      // $state = State::where('name', $stateName)->first();
      // $stateId = $state->id;
      // if (!$state) {
      //   return response()->json(['error' => 'State not found'], 404);
      // }

      // $Resturants = Resturaunt::where('state_id', $stateId)->paginate(10);
      // $Resturants = ResturauntResource::collection($Resturants);
      // return ApiTrait::data(compact('Resturants'), '', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

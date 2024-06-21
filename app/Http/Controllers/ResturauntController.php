<?php

namespace App\Http\Controllers;

use App\Http\Resources\ResturauntResource;
use App\Models\Resturaunt;
use App\Models\State;
use App\Traits\ApiTrait;
use Illuminate\Http\Request;

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
      $state = State::where('name', $stateName)->first();
      $stateId = $state->id;
      if (!$state) {
        return response()->json(['error' => 'State not found'], 404);
      }

      $Resturants = Resturaunt::where('state_id', $stateId)->paginate(10);
      $Resturants = ResturauntResource::collection($Resturants);
      return ApiTrait::data(compact('Resturants'), '', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

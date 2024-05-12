<?php

namespace App\Http\Controllers\Api\user;

use App\Http\Controllers\Controller;
use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use App\Http\Resources\HotelResource;
use App\Models\State;

class HotelController extends Controller
{
  public function getHotels()
  {
    // try {
    $hotels = Hotel::all();
    return $hotels;
    //   $hotels = Hotel::paginate(10);
    //   if ($hotels->count() > 0) {
    //     $allHotels = HotelResource::collection($hotels);
    //     return ApiTrait::data(compact('allHotels'), 'Hotels Fetched Successfully', 200);
    //   }
    //   return ApiTrait::errorMessage([], 'No Hotels Yet', 404);
    // } catch (\Throwable $th) {
    //   return ApiTrait::errorMessage([], 'Something went wrong', 500);
    // }
  }

  // get hotel by id
  public function getHotel($id)
  {
    if (!is_numeric($id)) {
      return ApiTrait::errorMessage([], 'Invalid Hotel Id', 400);
    }
    try {
      $hotel = Hotel::find($id);
      if (!$hotel) {
        return ApiTrait::errorMessage([], 'Hotel Not Found', 404);
      }
      return HotelResource::collection([$hotel]);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  public function getHotelsByState($stateName)
  {
    try {
      $state = State::where('name', $stateName)->first();
      $stateId = $state->id;
      if (!$state) {
        return response()->json(['error' => 'State not found'], 404);
      }

      $hotels = Hotel::where('state_id', $stateId)->paginate(10);
      // return $hotels;
      $hotels = HotelResource::collection($hotels);
      return ApiTrait::data(compact('hotels'),'', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

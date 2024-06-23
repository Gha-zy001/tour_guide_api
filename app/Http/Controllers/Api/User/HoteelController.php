<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Hotel;
use App\Traits\ApiTrait;
use App\Http\Resources\HotelResource;
use App\Models\State;
use Illuminate\Support\Facades\Cache;

class HoteelController extends Controller
{
  public function getHotels()
  {
    try {
      $hotels = Hotel::all();
      $hotels = Hotel::paginate(10);
      if ($hotels->count() > 0) {
        $allHotels = HotelResource::collection($hotels);
        return ApiTrait::data(compact('allHotels'), 'Hotels Fetched Successfully', 200);
      }
      return ApiTrait::errorMessage([], 'No Hotels Yet', 404);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
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
      $cacheKey = 'hotels.state.' . $stateName;

      $hotels = Cache::rememberForever($cacheKey, function () use ($stateName) {
        $state = State::where('name', $stateName)->first();
        if (!$state) {
          return response()->json(['error' => 'State not found'], 404);
        }

        $hotels = Hotel::where('state_id', $state->id)
          ->with([
            'images' => function ($query) {
              $query->select('data', 'hotel_id');
            }
          ])
          ->get(['id', 'state_id', 'name', 'rate', 'address', 'price']);

        $hotelsArray = $hotels->map(function ($hotels) {

          return [
            'id' => $hotels->id,
            'state_id' => $hotels->state_id,
            'name' => $hotels->name,
            'address' => $hotels->address,
            'img_url' => $hotels->images->pluck('data')->toArray(),
            'rate' => $hotels->rate,
            'price' => $hotels->price,
          ];
        })->toArray();

        return $hotelsArray;
      });
      $hotels = Cache::get('hotels.state.' . $stateName);
      return compact('hotels');
      // $state = State::where('name', $stateName)->first();
      // $stateId = $state->id;
      // if (!$state) {
      //   return response()->json(['error' => 'State not found'], 404);
      // }

      // $hotels = Hotel::where('state_id', $stateId)->paginate(10);
      // // return $hotels;
      // $hotels = HotelResource::collection($hotels);
      // return ApiTrait::data(compact('hotels'), '', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}

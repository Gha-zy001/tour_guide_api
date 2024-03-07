<?php

namespace App\Http\Controllers\Api\user;

use App\Http\Controllers\Controller;
use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use App\Http\Resources\HotelResource;


class HotelController extends Controller
{
    public function getHotels()
    {
        try {
            $hotels = Hotel::with('images')->get();
            if ($hotels->count() > 0) {
                return HotelResource::collection($hotels);
                // return ApiTrait::data([$hotels], 'Hotels Fetched Successfully', 200);
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
            $hotel = Hotel::with('images')->find($id);
            if (!$hotel) {
                return ApiTrait::errorMessage([], 'Hotel Not Found', 404);
            }
            return HotelResource::collection([$hotel]);
        } catch (\Throwable $th) {
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }
    }

}

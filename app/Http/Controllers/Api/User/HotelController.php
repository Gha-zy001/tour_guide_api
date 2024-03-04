<?php

namespace App\Http\Controllers\Api\user;

use App\Http\Controllers\Controller;
use App\Models\Hotel;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use App\Http\Resources\HotelResource;


class HotelController extends Controller
{
  public function index()
  {
    try {
      $places = Hotel::with('images')->get();
      if (count($places) > 0) {
        return HotelResource::collection($places);
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Hotels Yet', 422);
    }
  }
}

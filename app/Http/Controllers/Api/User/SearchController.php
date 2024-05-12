<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\HotelResource;
use App\Http\Resources\PlaceResource;
use App\Models\Hotel;
use App\Models\Place;
use Illuminate\Http\Request;

class SearchController extends Controller
{
  public function searchPlace(Place $request)
  {
    $query = Place::all(10);
    return PlaceResource::collection($query);
    // $type = $request['type'];
    // if ($type == 'place') {
    //   $query = Place::where('name', 'like', '%' . $request['name'] . '%')
    //     ->whereHas('state', function ($query) use ($request) {
    //       $query->where('name', 'like', '%' . $request['state'] . '%');
    //     })
    //     ->paginate(10);
    // if ($request['rate'] > 0) {
    //   $query->whereHas('reviews', function ($query) use ($request) {
    //     $query->where('star_rating', 'like', '%' . $request['rate'] . '%');
    //   })
    //     ->paginate(10);
    // }
    // } elseif ($type == 'hotel') {
    //   $query = Hotel::where('name', 'like', '%' . $request['name'] . '%')
    //     ->whereHas('state', function ($query) use ($request) {
    //       $query->where('name', 'like', '%' . $request['state'] . '%');
    //     })
    //     ->where('rate', 'like', '%' . $request['rate'] . '%')
    //     ->paginate(10);
    //   return HotelResource::collection($query);
    // }
  }

  public function searchHotels(Hotel $request)
  {
    $query = Hotel::paginate(10);
    return HotelResource::collection($query);
  }
}

<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Api\User\RecommendationController;
use App\Models\Place;
use App\Traits\ApiTrait;

class HomeController extends Controller
{
  public function homeContent()
  {
    $recommendationsData = (new RecommendationController())
      ->recommendPlaces();
    $places = Place::limit(10)->get();
    $data = [
      'recommendations' => $recommendationsData,
      'places' => $places
    ];
    return ApiTrait::data($data, '', 200);
  }
}

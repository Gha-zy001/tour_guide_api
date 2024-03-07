<?php

namespace App\Http\Resources;

use App\Models\Picture;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\Place;

class PlaceResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    return [
      'id' => $this->id,
      'name' => $this->name,
      'description' => $this->description,
      'address' => $this->address,
      'img_url' => $this->images->pluck('data', 'id'),
      'average_rating' => $this->reviews->avg('star_rating'),
    ];
  }
}

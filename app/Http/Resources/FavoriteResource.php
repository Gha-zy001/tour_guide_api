<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class FavoriteResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    $isFavorite = $request->user() ? $request->user()->favorites->contains($this->id) : false;
    return [
      'id' => $this->id,
      'name' => $this->name,
      'address' => $this->address,
      'status' => $isFavorite,
      'img_url' => $this->images->pluck('data'),
    ];
  }
}

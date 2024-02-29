<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Picture extends Model
{
  use HasFactory;
  protected $fillable = [
    'data',
  ];

  // public function place()
  // {
  //   return $this->hasMany(Place::class, 'place_id');
  // }

  // public function hotel()
  // {
  //   return $this->hasMany(Hotel::class, 'hotel_id');
  // }
}

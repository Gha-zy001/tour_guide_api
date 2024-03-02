<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'state_id',
    'place_id',
    'description',
    'address'
  ];


  public function favoritedBy()
  {
    return $this->belongsToMany(User::class, 'favorites');
  }

  public function images()
{
    return $this->hasMany(Image::class, 'place_id');
}

  public function state()
  {
    return $this->belongsTo(State::class, 'state_id');
  }
}

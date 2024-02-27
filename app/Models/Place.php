<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'description',
    'address'
  ];

  public function reviews()
  {
    return $this->hasMany(Review::class);
  }

  public function favoritedBy()
  {
    return $this->belongsToMany(User::class, 'favorites');
  }

  public function pictures()
  {
    return $this->hasMany(Picture::class);
  }
}

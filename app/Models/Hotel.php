<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'photo_id',
    'address',
    'price',
  ];

  public function reviews()
  {
    return $this->hasMany(Review::class);
  }

  public function favoritedBy()
  {
    return $this->belongsToMany(User::class, 'favorites');
  }

  public function photo() {
    return $this->belongsTo(Picture::class, 'photo_id');
}
}

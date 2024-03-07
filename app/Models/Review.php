<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
  use HasFactory;
  protected $fillable = [
    'user_id',
    'reviewable_id',
    'reviewable_type',
    'star_rating',
    'comments',
  ];

  public function reviewable()
  {
    return $this->morphTo();
  }
}

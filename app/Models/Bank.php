<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
  use HasFactory;
  protected $fillable = [
    'name',
    'rate',
    'location',
    'state_id'
  ];

  public function state()
  {
    return $this->belongsTo(State::class, 'state_id');
  }
}

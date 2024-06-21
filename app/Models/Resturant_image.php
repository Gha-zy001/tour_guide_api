<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Resturant_image extends Model
{
    use HasFactory;
    protected $fillable = [
      'data',
      'resturant_id'
    ];
  
    public function resturant()
    {
      return $this->belongsTo(Resturaunt::class,'resturant_id');
    }
}

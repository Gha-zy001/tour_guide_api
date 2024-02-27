<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    protected $fillable = ['user_id', 'name', 'date', 'city'];
    use HasFactory;
}

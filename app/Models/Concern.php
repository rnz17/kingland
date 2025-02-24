<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Concern extends Model
{
    protected $fillable = [
        'name',
        'email',
        'content',
        'contacted'
    ];

}

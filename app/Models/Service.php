<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
        'name',
        'descriptions'
    ];
   
    // Define the relationship to Category
    public function category()
    {
        return $this->hasMany(Category::class);
    }
}

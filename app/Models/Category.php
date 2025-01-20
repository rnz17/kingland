<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['service_id', 'name'];

    public function subcategories()
    {
        return $this->hasMany(Subcategory::class);
    }
}

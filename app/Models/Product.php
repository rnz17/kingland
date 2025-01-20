<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $fillable = [
        'code',
        'name',
        'service_id',
        'category_id',
        'subcategory_id',
        'supplier',
        'spec',
        'unit',
        'pcs_unit',
        'unit_price',
        'value_ratio',
        'status',
        'available',
        'needed',
        'to_buy',
        'low_alert',
        'prod_note'
    ];

    // Define the relationship to Category
    public function service()
    {
        return $this->belongsTo(Service::class);
    }
   
    // Define the relationship to Category
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    // Define the relationship to Subcategory
    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }
}

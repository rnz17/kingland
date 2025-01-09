<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $fillable = [
        'code',
        'name',
        'category',
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
}

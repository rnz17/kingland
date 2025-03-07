<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\ProductLog;
use Illuminate\Support\Facades\Auth;

class Product extends Model
{

    use HasFactory;

    protected $fillable = [
        'id',
        'code',
        'name',
        'service_id',
        'category_id',
        'subcategory_id',
        'supplier',
        'spec',
        'brand',
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

    protected static function boot()
    {
        parent::boot();

        // Log when a product is created
        static::created(function ($product) {
            ProductLog::create([
                'product_code' => $product->code,
                'action' => 'add',
                'new_values' => $product->toArray(),
                'user_id' => Auth::id(),
            ]);
        });

        // Log when a product is updated
        static::updated(function ($product) {
            ProductLog::create([
                'product_code' => $product->code,
                'action' => 'edit',
                'old_values' => $product->getOriginal(),
                'new_values' => $product->getChanges(),
                'user_id' => Auth::id(),
            ]);
        });

        // Log when a product is deleted
        static::deleted(function ($product) {
            ProductLog::create([
                'product_code' => $product->code,
                'action' => 'delete',
                'old_values' => $product->toArray(),
                'user_id' => Auth::id(),
            ]);
        });
    }

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

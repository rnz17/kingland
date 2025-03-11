<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    protected $fillable = ['product_id', 'supplier_id', 'price']; // Add necessary fields

    // Define the supplier relationship
    public function supplier()
    {
        return $this->belongsTo(Supplier::class, 'supplier_id');
    }

    // Define the product relationship
    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}

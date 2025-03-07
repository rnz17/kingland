<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductLog extends Model
{
    use HasFactory;

    protected $table = 'prod_logs';

    protected $fillable = ['product_code', 'action', 'old_values', 'new_values', 'user_id'];

    protected $casts = [
        'old_values' => 'array',
        'new_values' => 'array',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

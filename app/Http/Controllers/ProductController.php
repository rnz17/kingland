<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function getProduct()
    {
        $products = Product::all();
        return view('sell', ['products' => $products]);
    }

    public function createProduct(Request $request)
    {
        $products = Product::all();
        return view('dashboard.createProduct', ['products' => $products]);
    }
    
    public function store(Request $request)
    {
        $data = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'supplier' => 'nullable',
            'spec' => 'nullable',
            'unit' => 'required',
            'pcs_unit' => 'nullable',
            'unit_price' => 'required|regex:/^\d+(\.\d{1,2})?$/',
            'value_ratio' => 'nullable',
            'status' => 'nullable',
            'available' => 'nullable',
            'needed' => 'nullable',
            'to_buy' => 'nullable',
            'low_alert' => 'nullable',
            'prod_note' => 'nullable'
        ]);

        // Attempt to create the product
        $newProduct = Product::create($data);
        
        return redirect(route('createProduct'));
    }


}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Filter;

class ProductController extends Controller
{
    public function index()
    {
        $filters = Filter::all();
        $products = Product::all();
        return view('dashboard.createProduct', ['products' => $products, 'filters' => $filters]);
    }
    
    public function store(Request $request)
    {
        $data = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'category_id' => 'required|integer|between:1,9',
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

        // Manually define category
        $filter = Filter::find($data['category_id']);
        if ($filter) {
            $data['category'] = $filter->name;
        }

        $newProduct = Product::create($data);

        if ($newProduct) {
            return redirect()->route('dashboard')->with('success', 'Product created successfully.');
        } else {
            return redirect()->route('dashboard')->with('error', 'Failed to create product.');
        }

    }

    public function update(Request $request)
    {
        // Get the code from the form input
        $code = $request->input('code');  // Use input() for form data

        // Validate the incoming request data
        $data = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'category_id' => 'required|integer|between:1,9',
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

        // Manually define category
        $filter = Filter::find($data['category_id']);
        if ($filter) {
            $data['category'] = $filter->name;
        }

        // Find the product by code
        try {
            $product = Product::where('code', $code)->firstOrFail();
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return redirect()->route('dashboard')->with('error', 'Product not found.');
        }

        // Update the product with new values
        $product->update($data);

        // Redirect to the dashboard with a success message
        return redirect(route('dashboard'))->with('success', 'Product updated successfully.');
    }

    public function delete(Request $request)
    {
        $product = 
        Product::where('code', $request->query('code'))->firstOrFail();
        // Delete the product
        $product->delete();

        // Redirect with a success message
        return redirect(route('dashboard'))->with('success', 'Product deleted successfully.');
    }

}

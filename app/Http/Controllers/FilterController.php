<?php

namespace App\Http\Controllers;

use App\Models\Filter;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;


class FilterController extends Controller
{
    public function filters(Request $request)
    {
        $filters = Filter::all();

        $query = Product::query();

        if(isset($request->search) && ($request->search !== NULL)){
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        if(isset($request->category) && ($request->category !== NULL)){
            $query->whereHas(relation: 'category', callback: function($q){
                $q->where('category_id', request('category'));
            });
        }

        $products = $query->get();

        return view('sell', compact('products', 'filters'));
    }

    
    public function dashboard(Request $request)
    {
        // Fetch the filters
        $filters = Filter::all();

        // Get the table columns
        $columns = Schema::getColumnListing('products');

        // Start building the query for products
        $query = Product::query();

        // Apply search filter if provided
        if (isset($request->search) && ($request->search !== NULL)) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        // Apply category filter if provided
        if (isset($request->category) && ($request->category !== NULL)) {
            $query->whereHas('category', function ($q) use ($request) {
                $q->where('category_id', $request->category);
            });
        }

        // Fetch the products based on the query
        $products = $query->get();

        // Pass the columns, products, and filters to the view
        return view('dashboard', compact('columns', 'products', 'filters'));
    }
    
}

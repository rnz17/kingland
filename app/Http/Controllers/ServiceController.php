<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;


class ServiceController extends Controller
{

    public function story(){
        $filters = Service::all();

        return view('story', compact('filters'));
    }

    public function categories(){
        $services = Service::all();
        $categories = Category::all();
        $subcategories = Subcategory::all();

        return view('dashboard.categories', compact('services', 'categories', 'subcategories'));
    }

    public function offers(){
        $filters = Service::all();

        return view('services', compact('filters'));
    }

    public function filters(Request $request)
    {
        $filters = Service::all();

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
        $filters = Service::all();

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

    public function showItemByCode(Request $request)
    {
        $filters = Service::all();
        $code = $request->query('code'); //get code from URL

        // Assuming Product is your model
        $item = Product::where('code', $code)->first(); //compare $code into code from model:Product

        if (!$item) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        return view('dashboard.editProduct', compact('item','filters'));
    }

    public function filAndModal(Request $request)
    {
        // Get all services
        $filters = Service::all();

        // Get categories related to services
        $categories = Category::whereIn('service_id', $filters->pluck('id'))->get();

        // Get subcategories related to categories
        $subcategories = Subcategory::whereIn('category_id', $categories->pluck('id'))->get();

        // Build the query for products
        $query = Product::query();

        // Apply search filter if present
        if (isset($request->search) && !empty($request->search)) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        // Apply filters from the checkboxes
        if (isset($request->filters) && !empty($request->filters)) {
            $query->where(function($q) use ($request) {
                $q->whereIn('service_id', $request->filters)
                ->orWhereIn('category_id', $request->filters)
                ->orWhereIn('subcategory_id', $request->filters);
            });
        }

        // Get products with eager loading for related service, category, and subcategory models
        $products = $query->with(['service', 'category', 'subcategory'])->get();

        // Merge categories and subcategories into products
        $products->each(function($product) use ($categories, $subcategories) {
            // Get categories for this product's service
            $product->categories = $categories->where('service_id', $product->service_id)->values();

            // Get subcategories for each category
            $product->categories->each(function($category) use ($subcategories) {
                $category->subcategories = $subcategories->where('category_id', $category->id)->values();
            });
        });

        return view('sell', compact('products', 'filters'));
    }


    

}

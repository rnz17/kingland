<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\ProductLog;
use App\Models\Supplier;
use App\Models\Price;
use App\Models\Announcement;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;


class ServiceController extends Controller
{

    public function story(){
        $filters = Service::all();

        return view('story', compact('filters'));
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


        $logs = ProductLog::orderByDesc('id')->get();



        // Apply search filter if provided
        if (isset($request->search) && ($request->search !== NULL)) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        // Apply category filter if provided
        if (isset($request->category) && ($request->category !== NULL)) {
            $query->whereHas('category', function ($q) use ($request) {
                $q->where('service_id', $request->category);
            });
        }

        // Fetch the products based on the query
        $products = $query->get();

        $products = $products->sortBy('code');

        $services = Service::all();
        $cat = Category::all();
        $subcat = Subcategory::all();

        // Pass the columns, products, and filters to the view
        return view('dashboard', compact('columns', 'products', 'filters', 'services', 'cat', 'subcat', 'logs'));
    }

    public function showItemByCode(Request $request)
    {
        $services = Service::all();
        $cat = Category::all();
        $subcat = Subcategory::all();
        $suppliers = Supplier::all();
        $code = $request->query('code'); //get code from URL
        



        
        // Properly execute the raw query to get ENUM values
        $enumValues = DB::select("SHOW COLUMNS FROM products WHERE Field = 'unit'");

        // Ensure we have a result
        if (empty($enumValues)) {
            abort(500, "Could not retrieve column details for 'unit'.");
        }

        // Extract the ENUM type
        $type = $enumValues[0]->Type ?? null;

        if (!$type) {
            abort(500, "Could not determine the ENUM type for 'unit'.");
        }

        // Parse ENUM values
        preg_match("/^enum\((.*)\)$/", $type, $matches);
        $units = array_map(function ($value) {
            return trim($value, "'");
        }, explode(',', $matches[1]));

        // Assuming Product is your model
        $item = Product::where('code', $code)->first(); //compare $code into code from model:Product

        $prices = Price::where('product_id',$item->id)->get();

        // dd($prices);

        if (!$item) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        return view('dashboard.editProduct', compact('item','services', 'suppliers', 'cat','subcat','units', 'prices'));
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
    if (!empty($request->search)) {
        $query->where('name', 'like', '%' . $request->search . '%');
    }

    // Apply filters from checkboxes
    if (!empty($request->filters)) {
        $query->where(function ($q) use ($request) {
            // Service filters
            $serviceFilters = collect($request->filters)->reject(fn($f) => strpos($f, 'cat') !== false || strpos($f, 'sub') !== false)->values();
            if ($serviceFilters->isNotEmpty()) {
                $q->whereIn('service_id', $serviceFilters);
            }

            // Category filters
            $categoryFilters = collect($request->filters)->filter(fn($f) => strpos($f, 'cat') !== false)->values();
            if ($categoryFilters->isNotEmpty()) {
                $categoryIds = $categoryFilters->map(fn($f) => str_replace('cat', '', $f));
                $q->whereIn('category_id', $categoryIds);
            }

            // Subcategory filters
            $subcategoryFilters = collect($request->filters)->filter(fn($f) => strpos($f, 'sub') !== false)->values();
            if ($subcategoryFilters->isNotEmpty()) {
                $subcategoryIds = $subcategoryFilters->map(fn($f) => str_replace('sub', '', $f));
                $q->whereIn('subcategory_id', $subcategoryIds);
            }
        });
    }

    // Apply sorting and pagination
    $products = $query
        ->where('hidden', 0)
        ->orderBy('service_id', 'asc')
        ->orderBy('category_id', 'asc')
        ->orderBy('subcategory_id', 'asc')
        ->orderBy('code', 'asc')
        ->with(['service', 'category', 'subcategory'])
        ->paginate(50);

    // Load announcements
    $marq = Announcement::all();

    // Return view with pagination links
    return view('sell', compact('products', 'filters', 'marq'));
}

    
}

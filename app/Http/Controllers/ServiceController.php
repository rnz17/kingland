<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\ProductLog;
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


        $logs = ProductLog::all();

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

        if (!$item) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        return view('dashboard.editProduct', compact('item','services','cat','subcat','units'));
    }

    public function filAndModal(Request $request)
    {
        // dd($request);
    
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
    
        // dd($request);

        // Apply filters from the checkboxes
        if (isset($request->filters) && !empty($request->filters)) {
            $query->where(function ($q) use ($request) {
                // Handle filters based on service_id
                $serviceFilters = collect($request->filters)->filter(function ($filter) {
                    return strpos($filter, 'cat') === false && strpos($filter, 'sub') === false;
                })->values();
        
                if ($serviceFilters->isNotEmpty()) {
                    $q->whereIn('service_id', $serviceFilters);
                }
        
                // Handle filters based on category_id
                $categoryFilters = collect($request->filters)->filter(function ($filter) {
                    return strpos($filter, 'cat') !== false;
                })->values();
        
                if ($categoryFilters->isNotEmpty()) {
                    $categoryIds = $categoryFilters->map(function ($filter) {
                        return str_replace('cat', '', $filter);  // Remove 'cat' prefix
                    });
                    $q->whereIn('category_id', $categoryIds);
                }
        
                // Handle filters based on subcategory_id
                $subcategoryFilters = collect($request->filters)->filter(function ($filter) {
                    return strpos($filter, 'sub') !== false;
                })->values();
        
                if ($subcategoryFilters->isNotEmpty()) {
                    $subcategoryIds = $subcategoryFilters->map(function ($filter) {
                        return str_replace('sub', '', $filter);  // Remove 'sub' prefix
                    });
                    $q->whereIn('subcategory_id', $subcategoryIds);
                }
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

        $products = $products->where('hidden', 0)->sortBy([
            ['service_id', 'asc'],
            ['category_id', 'asc'],
            ['subcategory_id', 'asc'],
            ['code', 'asc']
        ]);
    


    
        // Load announcements
        $marq = Announcement::all();
    
        // Return the view with the filtered products and other data
        return view('sell', compact('products', 'filters', 'marq'));
    }
    
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Filter;
use App\Models\Blog;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class ProductController extends Controller
{
    public function home()
    {
        $filters = Filter::all();
        $products = Product::all();
        $blogs = Blog::orderBy('id', 'desc')->get();

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

        // Pass data to the view
        return view('home', [
            'products' => $products,
            'filters' => $filters,
            'units' => $units,
            'blogs' => $blogs
        ]);
    }

    public function index()
    {
        $filters = Filter::all();
        $products = Product::all();

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

        // Pass data to the view
        return view('dashboard.createProduct', [
            'products' => $products,
            'filters' => $filters,
            'units' => $units
        ]);
    }

    public function table(Request $request)
    {
        // Define the specific columns you want to display
        $columns = ['code', 'name', 'category', 'spec', 'unit'];

        // Fetch the filters
        $filters = Filter::all();

        // Fetch the products, selecting only the specified columns
        $query = Product::select($columns);

        // Apply search filter if provided
        if ($request->search) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        // Apply category filter if provided
        if ($request->category) {
            $query->whereHas('category', function ($q) use ($request) {
                $q->where('category_id', $request->category);
            });
        }

        // Fetch the products
        $products = $query->get();

        return view('buy', compact('columns', 'products', 'filters'));
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

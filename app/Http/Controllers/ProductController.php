<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Service;
use App\Models\Slide;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Blog;
use App\Models\Price;
use App\Models\Supplier;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class ProductController extends Controller
{
    public function home()
    {
        $filters = Service::all();
        $products = Product::all();
        $images = Slide::all();
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
            'blogs' => $blogs,
            'images' => $images
        ]);
    }

    public function index()
    {
        $services = Service::all();
        $cat = Category::all();
        $subcat = Subcategory::all();
        $products = Product::all();
        $suppliers = Supplier::all();

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
            'services' => $services,
            'cat' => $cat,
            'subcat' => $subcat,
            'units' => $units,
            'suppliers' => $suppliers
        ]);
    }

    public function table(Request $request)
    {
        // Define the specific columns you want to display
        $columns = ['code', 'name', 'spec', 'unit'];

        // Fetch the filters
        $filters = Service::all();

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
        // Validate the request, excluding the image file for now
        $data = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'service_id' => 'required|integer|between:1,9',
            'category_id' => 'required|integer',
            'subcategory_id' => 'required|integer',
            'brand' => 'nullable',
            'spec' => 'required',
            'unit' => 'required',
            'pcs_unit' => 'required|numeric|between:0,999999.99',
            'value_ratio' => 'nullable|numeric|between:0,999999.99',
            'status' => 'nullable',
            'available' => 'nullable|numeric|between:0,999999.99',
            'needed' => 'nullable|numeric|between:0,999999.99',
            'to_buy' => 'nullable|numeric|between:0,999999.99',
            'low_alert' => 'nullable|numeric|between:0,999999.99',
            'prod_note' => 'nullable',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:3048', // Add validation for the image
        ]);
    
        // Check if an image was uploaded
        if ($request->hasFile('image')) {
            $image = $request->file('image');
    
            // Generate a file name using the 'code' field
            $fileName = $request->input('code') . '.' . $image->getClientOriginalExtension();
    
            // Move the uploaded image to the public folder
            $imagePath = $image->storeAs('images/products', $fileName, 'public');
        }
    
        // Create the product record without the image URL field (since it's not being saved in the database)
        $newProduct = Product::create($data);

        // Insert multiple suppliers and prices
        if ($newProduct && $request->has('supplier_id') && $request->has('price')) {
            $suppliers = $request->input('supplier_id');
            $prices = $request->input('price');

            foreach ($suppliers as $index => $supplier_id) {
                if (!empty($supplier_id) && isset($prices[$index])) {
                    Price::create([
                        'supplier_id' => $supplier_id,
                        'product_id' => $newProduct->id,
                        'price' => $prices[$index],
                    ]);
                }
            }
        }
    
        if ($newProduct) {
            return redirect()->route('dashboard')->with('success', 'Product created successfully.');
        } else {
            return redirect()->route('dashboard')->with('error', 'Failed to create product.');
        }
    }
    
    public function update(Request $request)
    {
        $id = $request->input('id');

        // dd($request);

    
        $data = $request->validate([
            'id' => 'required',
            'code' => 'required',
            'name' => 'required',
            'image' => 'nullable|image|max:3048', // Ensure image validation
            'service_id' => 'required|integer|between:1,9',
            'category_id' => 'required|integer',
            'subcategory_id' => 'required|integer',
            'brand' => 'nullable',
            'spec' => 'required',
            'unit' => 'required',
            'pcs_unit' => 'nullable',
            'value_ratio' => 'nullable',
            'status' => 'nullable',
            'available' => 'nullable',
            'needed' => 'nullable',
            'to_buy' => 'nullable',
            'low_alert' => 'nullable',
            'prod_note' => 'nullable',
            'supplier_id' => 'required|array', // Ensure multiple supplier IDs are passed
            'price' => 'required|array', // Ensure multiple prices are passed
        ]);

    
        try {
            $product = Product::where('id', $id)->firstOrFail();
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return redirect()->route('dashboard')->with('error', 'Product not found.');
        }
    
        // Handle the image update
        if ($request->hasFile('image')) {
            $code = $data['code'];    
            // Delete existing images with the same code (regardless of extension)
            $existingImages = Storage::files('/images/products/');
            foreach ($existingImages as $file) {
                if (pathinfo($file, PATHINFO_FILENAME) == $code) {
                    $file = str_replace('public/', '', $file);
                    Storage::delete($file);
                }
            }
    
            // Store the new image with the correct filename and original extension
            $image = $request->file('image');
            $fileName = $request->input('code') . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('images/products', $fileName, 'public');
        }
    
        // Retrieve current prices for this product
        $existingPrices = Price::where('product_id', $product->id)->get()->keyBy('supplier_id'); // Key by supplier_id for easy lookup
    
        // Loop through new prices from the request
        foreach ($request->supplier_id as $index => $supplier_id) {
            $priceValue = $request->price[$index];
    
            if (isset($existingPrices[$supplier_id])) {
                // If supplier already exists, update if price has changed
                if ($existingPrices[$supplier_id]->price != $priceValue) {
                    $existingPrices[$supplier_id]->update([
                        'price' => $priceValue,
                    ]);
                }
                // Remove from existingPrices to track which ones were updated
                unset($existingPrices[$supplier_id]);
            } else {
                // If supplier does not exist, create a new price entry
                Price::create([
                    'product_id' => $product->id,
                    'supplier_id' => $supplier_id,
                    'price' => $priceValue,
                ]);
            }
        }
    
        // Optional: Remove old prices that were not included in the new request
        // If you want to keep old prices, remove this part
        if ($existingPrices->isNotEmpty()) {
            Price::whereIn('id', $existingPrices->pluck('id'))->delete();
        }




        unset($data['supplier_id'], $data['price']);


        // Update the product
        $product->update($data);

    
        return redirect(route('dashboard'))->with('success', 'Product updated successfully.');
    }
        
    public function updatePrice(Request $request)
    {
        // Validate the input
        $request->validate([
            'id' => 'required|exists:products,category_id',
            'value' => 'required|numeric|min:1|max:100',
        ]);

        try {
            // Update all products with the given category_id
            Product::where('category_id', $request->id)
                ->update(['unit_price' => $request->value]);

            // Return success response
            return back()->with('success', 'All products in this category were updated successfully!');
        } catch (\Exception $e) {
            // Handle any errors
            return back()->with('error', 'Failed to update unit prices.');
        }
    }
    

    public function delete(Request $request)
    {
        // Find the product by code
        $product = Product::where('code', $request->query('code'))->firstOrFail();
        
        // Construct the file name pattern (e.g., 'code.*' to match any extension)
        $filePattern = public_path('storage/images/products/' . $product->code . '.*');
    
        // Find the file based on the pattern (e.g., '12345.jpg', '12345.png')
        $files = glob($filePattern);
    
        // If the file exists, delete it
        if ($files) {
            unlink($files[0]);  // Delete the first matched file
        }
    
        // Delete the product record
        $product->delete();
    
        // Redirect with a success message
        return redirect(route('dashboard'))->with('success', 'Product deleted successfully.');
    }
    

    public function updateHidden(Request $request){
        $request->validate([
            'code' => 'required|exists:products,code',
            'hidden' => 'required|boolean'
        ]);
    
        $product = Product::where('code', $request->code)->first();
        $product->hidden = $request->hidden;
        $product->save();
    
        return response()->json(['message' => 'Hidden status updated successfully.']);
    }

}

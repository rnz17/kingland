<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Subcategory;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function store(Request $request)
    {
        if ($request->input('type') === 'category') {
            // Handle category form submission
            $category = new Category();
            $category->service_id = $request->input('service_id');
            $category->name = $request->input('name');
            $category->save();
            
            return redirect()->back()->with('success', 'Category created successfully.');
        } elseif ($request->input('type') === 'subcategory') {
            // Handle subcategory form submission
            $subcategory = new Subcategory();
            $subcategory->category_id = $request->input('category_id');
            $subcategory->name = $request->input('name');
            $subcategory->save();
            
            return redirect()->back()->with('success', 'Subcategory created successfully.');
        }
    }
}

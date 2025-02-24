<?php

namespace App\Http\Controllers;
use App\Models\Service;
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

    public function categories(){
        $services = Service::all();
        $categories = Category::all();
        $subcategories = Subcategory::all();

        $serv = Service::with('category')->get();
        // dd($serv->toArray());
        $categories = Category::with('subcategories')->get();

        return view('dashboard.categories', compact('services', 'categories', 'subcategories', 'serv'));
    }

    public function deleteCategory($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return redirect()->route('categories.index')->with('success', 'Category deleted successfully.');
    }

    public function deleteSubcategory($id)
    {
        $subcategory = Subcategory::findOrFail($id);
        $subcategory->delete();
        return redirect()->route('categories.index')->with('success', 'Subcategory deleted successfully.');
    }
}

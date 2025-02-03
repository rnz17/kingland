<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    
    public function index(Request $request){

        $blogs = Blog::all();


        return view('dashboard.blog', [
            'blogs' => $blogs 
        ]);

    }

    public function store(Request $request)
    {
        
        // Validate the input
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',  // Plain text content
            'image_url' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg'
             // Optional image
        ]);

        // Handle the image upload if present
        $imagePath = null;
        if ($request->hasFile('image_url')) {
            // Store the image in the 'images/blog' directory within the 'public' disk
            $imagePath = $request->file('image_url')->store('images/blog', 'public');
        }

        // Store the blog post in the database
        $blog = Blog::create([
            'title' => $request->input('title'),
            'content' => $request->input('content'),
            'image_url' => $imagePath, // Save the image path
        ]);

        // Redirect to a page (or return a success message)
        echo "<script>alert('Blog post created successfully!');</script>";
        return redirect()->route('blogs')->with('success', 'Blog post created successfully!');
    }

    public function edit($id){
        $blog = Blog::findOrFail($id);  // Find the blog by id

        // Pass the blog data to the view
        return view('dashboard.blogEdit', [
            'blog' => $blog 
        ]);
    }

    public function update(Request $request,$id)
    {

        $data = $request->validate([
            'id' => 'required',
            'title' => 'required',
            'content' => 'required',
            'image_url' => 'nullable'
        ]);

        try {
            $blog = Blog::where('id', $id)->firstOrFail();
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return redirect()->route('blogs')->with('error', 'Product not found.');
        }

        // Handle the image update
        if ($request->hasFile('image_url')) {
            $newImg = $request->file('image_url');
            $oldImg = $request->input('current_img');
            $existingImages = Storage::files('/images/blog');

            foreach($existingImages as $image){
                if($image == $oldImg){
                   Storage::delete($image);
                }
            }

            $imagePath = $request->file('image_url')->store('images/blog', 'public');

            $blog->update([
                'title' => $request->input('title'),
                'content' => $request->input('content'),
                'image_url' => $imagePath
            ]);

        }
    
            $blog->update([
                'title' => $request->input('title'),
                'content' => $request->input('content')
            ]);


        return redirect(route('blogs'))->with('success', 'Blog updated successfully.');
    }

    public function show($id)
    {
        $blog = Blog::findOrFail($id);  // Find the blog by id

        // Pass the blog data to the view
        return view('blog', [
            'image_url' => $blog->image_url,
            'title' => $blog->title,
            'content' => $blog->content,
        ]);
    }

    public function delete($id)
    {
        $blog = Blog::findOrFail($id);

        Storage::delete($blog->image_url);

        $blog->delete();
        
        return redirect(route('blogs'))->with('success', 'Blog deleted successfully.');
    }



}

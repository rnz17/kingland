<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;

class BlogController extends Controller
{
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
        return redirect()->route('blogEditor')->with('success', 'Blog post created successfully!');
    }

}

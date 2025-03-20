<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slide;
use Illuminate\Support\Facades\Storage;

class SlideController extends Controller
{
    public function index()
    {
        // Retrieve images sorted by 'pos' (ascending), then by 'fileName' (ascending)
        $images = Slide::orderBy('pos')->orderBy('created_at')->get();
    
        return view('dashboard.slides', compact('images'));
    }
    

    public function store(Request $request)
    {
        $request->validate([
            'slide' => 'required|image|mimes:jpeg,png,jpg,gif|max:3072',
        ]);

        // Get the original file name
        $originalFileName = time() . '_' . $request->file('slide')->getClientOriginalName();

        // Store the file in 'images/blog' directory with the original file name
        $imagePath = $request->file('slide')->storeAs('images/slides', $originalFileName, 'public');

        // Save the file path to the database
        Slide::create([
            'fileName' => $imagePath, // Save the file path
        ]);

        return redirect()->back()->with('success', 'Slide uploaded successfully!');
    }

    public function updateOrder(Request $request)
    {
        foreach ($request->positions as $position) {
            Slide::where('id', $position['id'])->update(['pos' => $position['pos']]);
        }

        return response()->json(['message' => 'Order updated successfully!']);
    }

    public function destroy($id)
    {
        $slide = Slide::findOrFail($id); // Find the image by ID

        // Delete the image file from storage
        Storage::delete($slide->fileName);

        // Delete the database record
        $slide->delete();

        return redirect()->back()->with('success', 'Image deleted successfully!');
    }
}

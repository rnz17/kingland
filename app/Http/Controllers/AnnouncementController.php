<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Announcement;

class AnnouncementController extends Controller
{
    public function index(){
        $contents = Announcement::all();

        return view('dashboard.announcement', compact(['contents']));
    }

    
    public function store(Request $request){
        
        $content = $request->validate([
            'content' => 'required|string'
        ]);
        


        $stored = Announcement::create($content);

        return redirect(route('announcements'))->with('success', 'Content added successfully.');
    }

    public function delete(Request $request)
    {

        $content = Announcement::where('id', $request->input('id'))->firstOrFail();
        // Delete the content

        $content->delete();

        // Redirect with a success message
        return redirect(route('announcements'))->with('success', 'Content deleted successfully.');
    }
}

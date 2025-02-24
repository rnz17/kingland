<?php

namespace App\Http\Controllers;
use App\Models\Concern;
use Carbon\Carbon;

use Illuminate\Http\Request;

class ConcernController extends Controller
{
    public function index(){
        $cold = Concern::whereNull('updated_at')->get(); // Get records where updated_at is NULL
        $warm = Concern::whereNotNull('updated_at') 
        ->orderBy('updated_at', 'asc') //sort asc
        ->get(); //store to $warm
    
    

        return view('dashboard.inquiries', compact('cold', 'warm'));
        
    }

    public function store(Request $request)
    {
        // Validate input
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'content' => 'required|string',
        ]);

        // Insert into the database
        Concern::insert([
            'name' => $request->name,
            'email' => $request->email,
            'content' => $request->content
        ]);

        // Redirect back with success message
        return redirect()->back()->with('success', 'Your inquiry has been submitted.');
    }
    
    public function update($id)
    {
        $concern = Concern::findOrFail($id);
        $concern->touch();
    
        return redirect()->back()->with('success', 'Timestamp updated successfully.');
    }
    

}

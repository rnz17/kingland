<?php

namespace App\Http\Controllers;
use App\Models\Offer;

use Illuminate\Http\Request;

class OfferController extends Controller
{
    public function offers(){
        $filters = Offer::all();

        return view('services', compact('filters'));
    }

    public function index(){
        $services = Offer::all();

        return view('dashboard/service', compact('services'));
    }

    public function edit($id){
        $service = Offer::findOrFail($id);  // Find the blog by id

        // Pass the blog data to the view
        return view('dashboard.serviceEdit', [
            'service' => $service 
        ]);
    }

    public function update(Request $request,$id)
    {

        $data = $request->validate([
            'id' => 'required',
            'name' => 'required',
            'descriptions' => 'required'
        ]);


        try {
            $service = Offer::where('id', $id)->firstOrFail();
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return redirect()->route('service.index')->with('error', 'Service not found.');
        }
    
            $service->update([
                'name' => $request->input('name'),
                'descriptions' => $request->input('descriptions')
            ]);


        return redirect(route('service.index'))->with('success', 'Service updated successfully.');
    }

}

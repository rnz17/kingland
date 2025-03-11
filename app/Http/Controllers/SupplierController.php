<?php

namespace App\Http\Controllers;



use Illuminate\Http\Request;
use App\Models\Supplier;
use App\Models\Price;

class SupplierController extends Controller
{

    public function index()
    {
        $suppliers = Supplier::all();
        $prices = Price::with(['supplier', 'product'])->get();
        return view('dashboard.suppliers', compact(['prices', 'suppliers']));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        Supplier::create(['name' => $request->name]);

        return redirect()->route('suppliers.index')->with('success', 'Supplier added successfully!');
    }

}

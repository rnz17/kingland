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
}

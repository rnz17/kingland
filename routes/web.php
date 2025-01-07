<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

Route::get('/', function () {
    return view('home');
})->name('home');

// Route::get('/sell', function () {
//     return view('sell');
// });

Route::get('/sell', [ProductController::class, 'getProduct'])->name('sell');

Route::get('/buy', function () {
    return view('buy');
});



Route::get('/history', function () {
    return view('history');
});

Route::get('/story', function () {
    return view('story');
});

Route::prefix('sng')->group(function () {
    Route::get('/', function () {
        return view('sng');
    });

    Route::get('/cso', function () {
        return view('governance.cso');
    });

    Route::get('/cg', function () {
        return view('governance.cg');
    });

    Route::get('/bc', function () {
        return view('governance.bc');
    });

    Route::get('/bcc', function () {
        return view('governance.bcc');
    });

    Route::get('/cgp', function () {
        return view('governance.cgp');
    });
});

Route::prefix('founders')->group(function () {
    Route::get('/', function () {
        return view('founders');
    });

    Route::get('/ceo', function () {
        return view('founders.ceo');
    });

    Route::get('/coo', function () {
        return view('founders.coo');
    });

    Route::get('/cfo', function () {
        return view('founders.cfo');
    });

    Route::get('/chro', function () {
        return view('founders.chro');
    });

    Route::get('/cmo', function () {
        return view('founders.cmo');
    });

    Route::get('/cso', function () {
        return view('founders.cso');
    });

    Route::get('/vpms', function () {
        return view('founders.vpms');
    });
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::get('/dashboard/createProd', [ProductController::class, 'createProduct'])->name('createProduct');
Route::post('/dashboard', [ProductController::class, 'store'])->name('storeProduct');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

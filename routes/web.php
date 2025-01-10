<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\FilterController;

use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;

// CLIENT PAGES
    Route::view('/', 'home')->name('home');
    Route::view('/story', 'story')->name('story');
    Route::view('/history', 'history')->name('history');
    Route::get('/sell', [FilterController::class, 'filters'])->name('sell');
    Route::view('/buy','buy')->name('buy');
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

// ADMIN DASHBOARD
    Route::get('/register', function () {return view('auth.register');})->name('register');

    Route::get('/dashboard', [FilterController::class, 'dashboard'])->middleware(['auth', 'verified'])->name('dashboard');
    Route::get('/dashboard/editProd', [FilterController::class, 'showItemByCode'])->name('editProduct');

    Route::get('/createProduct', [ProductController::class, 'index'] )->name('createProduct');
    Route::post('/createProduct', [ProductController::class, 'store'])->name('createProduct.store');


    Route::get('/editProduct', [FilterController::class, 'showItemByCode'] )->name('editProduct');
    Route::post('/editProduct', [ProductController::class, 'update'])->name('editProduct.update');
    Route::delete('/editProduct', [ProductController::class, 'delete'])->name('editProduct.delete');

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

// EMAIL TEST

Route::get('/email/verify', function () {
    return view('auth.verify-email');
})->middleware('auth')->name('verification.notice');


 
Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
    $request->fulfill();
    return redirect('/home');
})->middleware(['auth', 'signed'])->name('verification.verify');


 
Route::post('/email/verification-notification', function (Request $request) {
    $request->user()->sendEmailVerificationNotification();
    return back()->with('message', 'Verification link sent!');
})->middleware(['auth', 'throttle:6,1'])->name('verification.send');

require __DIR__.'/auth.php';

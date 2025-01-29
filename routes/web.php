<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\AnnouncementController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ServiceController;

use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;

// CLIENT PAGES
    Route::get('/', [ProductController::class, 'home'])->name('home');
    Route::view('/history', 'history')->name('history');
    
    
    // story

        Route::get('/story', [ServiceController::class, 'story'])->name('story');

    // services
        
        Route::get('/services', [ServiceController::class, 'offers'])->name('services');

    // sell
        Route::get('/sell', [ServiceController::class, 'filAndModal'])->name('sell');


    // buy
    Route::get('/buy', [ProductController::class, 'table'])->name('buy');

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

    Route::get('/dashboard', [ServiceController::class, 'dashboard'])->middleware(['auth', 'verified'])->name('dashboard');
    
    Route::get('/dashboard/editProd', [ServiceController::class, 'showItemByCode'])->name('editProduct');

    Route::get('/createProduct', [ProductController::class, 'index'] )->name('createProduct');
    Route::post('/createProduct', [ProductController::class, 'store'])->name('createProduct.store');


    Route::get('/editProduct', [ServiceController::class, 'showItemByCode'] )->name('editProduct');
    Route::post('/editProduct', [ProductController::class, 'update'])->name('editProduct.update');
    Route::delete('/editProduct', [ProductController::class, 'delete'])->name('editProduct.delete');

    Route::get('/categories', [CategoryController::class, 'categories'] )->name('editCategories');

    Route::post('/categories', [CategoryController::class, 'store'] )->name('store.category');

    Route::delete('/categories/category/{id}', [CategoryController::class, 'deleteCategory'])->name('category.delete');
    Route::delete('/categories/subcategory/{id}', [CategoryController::class, 'deleteSubcategory'])->name('subcategory.delete');


    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    
    Route::get('/announcements', [AnnouncementController::class, 'index'] )->name('announcements');
    Route::post('/announcements', [AnnouncementController::class, 'store'] )->name('announcements.store');
    Route::delete('/announcements', [AnnouncementController::class, 'delete'] )->name('announcements.delete');

// OTHERS

    // REQUESTS ROUTES
        
        Route::get('/requests', [ProfileController::class, 'viewReqs'] )->name('requests');

        Route::put('/users/{id}/admit', [ProfileController::class, 'admit'])->name('users.admit');
        Route::delete('/users/{id}/reject', [ProfileController::class, 'reject'])->name('users.reject');


    // EMAIL ROUTES

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

    // BLOG ROUTES

        Route::view('/blog','dashboard.blog')->name('blogEditor');

        Route::post('/blog', [BlogController::class, 'store'])->name('blogs.store');


        require __DIR__.'/auth.php';

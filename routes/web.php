<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\AnnouncementController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\OfferController;

use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;

// CLIENT PAGES
    Route::get('/', [ProductController::class, 'home'])->name('home');
    Route::view('/history', 'history')->name('history');
    Route::view('/contact', 'contact')->name('contact');
    Route::view('/pvp', 'pvp')->name('pvp');

    Route::get('/cont/{id}', [BlogController::class, 'show'])->name('blog.show');
    
    
    // story

        Route::get('/story', [ServiceController::class, 'story'])->name('story');

    // services
        
        Route::get('/services', [OfferController::class, 'offers'])->name('services');

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

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    Route::get('/dashboard', [ServiceController::class, 'dashboard'])->middleware(['auth', 'verified'])->name('dashboard');
    
    
    Route::view('/dashboard/blog','dashboard.blog')->name('blogEditor');
    Route::post('/dashboard/blog', [BlogController::class, 'store'])->name('blogs.store');
    
    Route::get('/dashboard/createProduct', [ProductController::class, 'index'] )->name('createProduct');
    Route::post('/dashboard/createProduct', [ProductController::class, 'store'])->name('createProduct.store');
    
    Route::get('/dashboard/editProd', [ServiceController::class, 'showItemByCode'])->name('editProduct');
    Route::post('/dashboard/editProduct', [ProductController::class, 'update'])->name('editProduct.update');
    Route::delete('/dashboard/editProduct', [ProductController::class, 'delete'])->name('editProduct.delete');

    Route::get('/dashboard/categories', [CategoryController::class, 'categories'] )->name('editCategories');
    Route::post('/dashboard/categories', [CategoryController::class, 'store'] )->name('store.category');
    Route::delete('/dashboard/categories/category/{id}', [CategoryController::class, 'deleteCategory'])->name('category.delete');
    Route::delete('/dashboard/categories/subcategory/{id}', [CategoryController::class, 'deleteSubcategory'])->name('subcategory.delete');

    Route::get('/dashboard/announcements', [AnnouncementController::class, 'index'] )->name('announcements');
    Route::post('/dashboard/announcements', [AnnouncementController::class, 'store'] )->name('announcements.store');
    Route::delete('/dashboard/announcements', [AnnouncementController::class, 'delete'] )->name('announcements.delete');

    Route::get('/dashboard/requests', [ProfileController::class, 'viewReqs'] )->name('requests');
    Route::put('/dashboard/users/{id}/admit', [ProfileController::class, 'admit'])->name('users.admit');
    Route::delete('/dashboard/users/{id}/reject', [ProfileController::class, 'reject'])->name('users.reject');
// OTHERS
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



        require __DIR__.'/auth.php';

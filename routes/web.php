<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\AnnouncementController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\OfferController;
use App\Http\Controllers\ConcernController;

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

        // Route::get('/cso', function () {
        //     return view('founders.cso');
        // });

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

    Route::middleware(['auth', 'verified'])->group(function () {
        Route::get('/dashboard', [ServiceController::class, 'dashboard'])->name('dashboard');
        Route::post('/dashboard/update-hidden', [ProductController::class, 'updateHidden'])->name('update.hidden');


        // Inquiries Routes
        Route::prefix('/dashboard/inquiries')->name('inquiries.')->group(function () {
            Route::get('/', [ConcernController::class, 'index'])->name('index');
            Route::post('/', [ConcernController::class, 'store'])->name('store');
            Route::put('/{id}', [ConcernController::class, 'update'])->name('update');
        });

        // Blog Routes
        Route::prefix('/dashboard/blog')->name('blogs.')->group(function () {
            Route::get('/', [BlogController::class, 'index'])->name('index');
            Route::post('/', [BlogController::class, 'store'])->name('store');
            Route::get('/{id}', [BlogController::class, 'edit'])->name('edit');
            Route::put('/{id}', [BlogController::class, 'update'])->name('update');
            Route::delete('/{id}', [BlogController::class, 'delete'])->name('delete');
        });
        
        // Product Routes
        Route::prefix('/dashboard/products')->name('products.')->group(function () {
            Route::get('/create', [ProductController::class, 'index'])->name('create');
            Route::post('/create', [ProductController::class, 'store'])->name('store');
            Route::get('/edit', [ServiceController::class, 'showItemByCode'])->name('edit');
            Route::put('/edit', [ProductController::class, 'update'])->name('update');
            Route::delete('/edit', [ProductController::class, 'delete'])->name('delete');
        });
        
        // Category Routes
        Route::prefix('/dashboard/categories')->name('categories.')->group(function () {
            Route::get('/', [CategoryController::class, 'categories'])->name('index');
            Route::post('/', [CategoryController::class, 'store'])->name('store');
            Route::delete('/category/{id}', [CategoryController::class, 'deleteCategory'])->name('category.delete');
            Route::delete('/subcategory/{id}', [CategoryController::class, 'deleteSubcategory'])->name('subcategory.delete');
        });
        
        // Announcement Routes
        Route::prefix('/dashboard/announcements')->name('announcements.')->group(function () {
            Route::get('/', [AnnouncementController::class, 'index'])->name('index');
            Route::post('/', [AnnouncementController::class, 'store'])->name('store');
            Route::delete('/', [AnnouncementController::class, 'delete'])->name('delete');
        });
        
        // User Requests Routes
        Route::prefix('/dashboard/users')->name('users.')->group(function () {
            Route::get('/requests', [ProfileController::class, 'viewReqs'])->name('requests');
            Route::put('/{id}/admit', [ProfileController::class, 'admit'])->name('admit');
            Route::delete('/{id}/reject', [ProfileController::class, 'reject'])->name('reject');
        });
    });
    
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

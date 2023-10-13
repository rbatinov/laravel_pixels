<?php

use App\Http\Controllers\AdminPanel;
use App\Http\Controllers\AdminPanelController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CommentsController;
use App\Http\Controllers\UserImagesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Change language
Route::get('/language/{locale}', function ($locale) {
    app()->setLocale($locale);
    session()->put('locale', $locale);
    return redirect()->back();
})->name('language_switcher_url');

Route::get('/', [UserImagesController::class, 'index'])->name('home_url');

#region Users

    // Show Create Form
    Route::get('/pictures/create', [UserImagesController::class, 'create'])->middleware('auth')->name('images_create_form_url');

    // Show Register/Create Form
    Route::get('/register', [UserController::class, 'create'])->middleware('guest')->name('register_form_url');

    // Show Login Form
    Route::get('/login', [UserController::class, 'login'])->middleware('guest')->name('login_form_url');

    // Log In User
    Route::post('/users/authenticate', [UserController::class, 'authenticate'])->name('users_authenticate_url');

    // Create New User
    Route::post('/users', [UserController::class, 'store'])->name('create_new_user_url');

    // Log User Out
    Route::post('users/logout', [UserController::class, 'logout'])->middleware('auth')->name('user_logout_url');

    // Show all users
    Route::get('/users', [UserController::class, 'index'])->name('user_all_url');

    // Show selected user
    Route::get('/user/{user}', [UserController::class, 'user_profile'])->name('user_profile_url');

    // Update User Profile
    Route::get('/users/{user}/edit', [UserController::class, 'edit'])->middleware('auth')->name('user_edit_url');

    // Update User Profile
    Route::put('/users/{user}', [UserController::class, 'update'])->middleware('auth')->name('user_update_url');

#endregion Users


#region User Images

    // Single Images
    Route::get('/pictures/{user_image}', [UserImagesController::class, 'show'])->name('show_single_image_url');

    // Store Picture
    Route::post('/pictures', [UserImagesController::class, 'store'])->middleware('auth')->name('store_image_url');

    // Show all images from specific user
    Route::get('/user/images/{user_id}', [UserController::class, 'user_all_images'])->name('user_all_images_url');

    

    // Manage Images
    Route::get('/pictures', [UserImagesController::class, 'all'])->name('all_images_url');

    // Delete Image
    Route::delete('/pictures/{user_image}', [UserImagesController::class, 'destroy'])->middleware('auth')->name('delete_user_image_url');

    // Show Edit Form
    Route::get('/pictures/{user_image}/edit', [UserImagesController::class, 'edit'])->middleware('auth')->name('user_image_edit_form_url');

    // Update Image
    Route::put('/pictures/{user_image}', [UserImagesController::class, 'update'])->middleware('auth')->name('update_picture_url');
    
    // Manage Images
    Route::get('/user-pictures/manage', [UserImagesController::class, 'manage'])->middleware('auth')->name('manage_user_images_url');

#endregion User Images



#region User Comments of Pictures

    // Post a Comment
    Route::post('/publishComment', [CommentsController::class, 'store'])->name('create_new_comment_url');

#endregion User Comments of Pictures

#region Contact 
    // Post a Comment
    Route::get('/contact', [ContactController::class, 'index'])->name('contact_form_url');

    Route::post('/contact', [ContactController::class, 'store'])->name('contact_form_send_url');

#endregion Contact 

Route::get('/post-too-large', function(){
    return view('errors.post-too-large');
})->name('post_too_large_url');

#region Admin
    Route::middleware(['auth', 'isAdmin'])->group(function () {
        
        // Admin Dashboard
        Route::get('/admin', [AdminPanelController::class, 'dashboard'])->name('admin_dashboard_url');

        // Admin Delete Comment 
        Route::delete('/admin/comment/{commentInfo}', [AdminPanelController::class, 'destroy_comment'])->name('admin_dashboard_destroy_comment_url');

        // Admin Delete User
        Route::delete('/admin/user/{userInfo}', [AdminPanelController::class, 'destroy_user'])->name('admin_dashboard_destroy_user_url');

    });
#endregion Admin

<?php


use Illuminate\Support\Facades\Route;

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

#LOGIN PAGE



#ADMIN PAGES:

Route::resource('admin', 'App\Http\Controllers\UsersController');

#TRUCKS PAGES:

Route::resource('trucks', 'App\Http\Controllers\TrucksController');

#IMAGES PAGES:

Route::resource('upload', 'App\Http\Controllers\ImagesController');

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;

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
Route::prefix('/')->middleware('isLogout')->group(function (){
Route::get('login',[LoginController::class,"login"])->name('login');
Route::post('loginpost',[LoginController::class,"loginpost"])->name('loginpost');
Route::get('register',[LoginController::class,"register"])->name('register');
Route::post('registerpost',[LoginController::class,"registerpost"])->name('registerpost');

});

Route::prefix('/')->middleware('isPeople')->group(function (){
Route::get('index',[PostController::class,"index"])->name('index');
Route::post('post',[PostController::class,"post"])->name('post');
Route::get('link',[PostController::class,"link"])->name('link');
Route::get('copy/{slug}',[PostController::class,"copy"])->name('copy');
Route::get('exit',[LoginController::class,"exit"])->name('exit');
});

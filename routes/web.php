<?php

use App\Http\Controllers\HomePageController;
use App\Http\Controllers\OurWorksController;
use Illuminate\Support\Facades\Route;

// Home page:
Route::get("", fn () => to_route('vproject.index'));
Route::resource("vproject", HomePageController::class)
    ->only("index");

// Our works:
Route::prefix('vproject')->group(function () {
    Route::resource("our-works", OurWorksController::class)
        ->only("show");
});
<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\RoomController;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\BookingController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Route Auth
Route::post('/login', [AuthController::class, 'login']);

// Route Rooms
Route::get('/rooms', [RoomController::class, 'index']);
Route::get('/admin/bookings', [BookingController::class, 'getAllBookings']);
Route::put('/admin/bookings/{id}/status', [BookingController::class, 'updateStatus']);

// Route Bookings
Route::post('/bookings', [BookingController::class, 'store']);
Route::get('/bookings', [BookingController::class, 'getUserBookings']);

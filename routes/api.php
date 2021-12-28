<?php

use App\Http\Controllers\profesorPredmetController;
use App\Http\Controllers\ProfesorController;
use App\Http\Controllers\PredmetController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\API\AuthController;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::get('/profesor', [ProfesorController::class, 'index']);
Route::get('/profesor/{id}', [ProfesorController::class, 'show']);
Route::get('/predmet', [PredmetController::class, 'index']);
Route::get('/predmet/{id}', [PredmetController::class, 'show']);

Route::resource('predaje', profesorPredmetController::class);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);


Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/profile', function (Request $request) {
        return auth()->user();
    });

    Route::resource('predaje', profesorPredmetController::class)->only(['update', 'store', 'destroy']);

    Route::post('/logout', [AuthController::class, 'logout']);
});

Route::resource('predaje', profesorPredmetController::class)->only(['index']);

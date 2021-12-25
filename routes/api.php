<?php

use App\Http\Controllers\profesorPredmetController;
use App\Http\Controllers\ProfesorController;
use App\Http\Controllers\UserController;
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

//Route::get('/profesorPredmets', [profesorPredmetController::class, 'index']);
//Route::get('/profesorPredmets/{id}', [profesorPredmetController::class, 'show']);

//Route::post('/profesors', [ProfesorController::class, 'addProfesor']);
//Route::put('/profesors/{profesor}', [ProfesorController::class, 'editProfesor']);


Route::resource('profesorPredmets', profesorPredmetController::class);
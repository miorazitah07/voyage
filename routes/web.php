<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\VoyageController;
use App\Http\Controllers\ReservationController;

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

Route::get('/filtreCategorie/{id}', [VoyageController::class, 'filtreByCategorie'])->name('filtre');
Route::get('/detailVoyage/{voyages_id}', [VoyageController::class, 'detailVoyage'])->name('detail');
Route::post('/reservationVoyage/{voyages_id}', [ReservationController::class, 'sessionInsertReservation'])->name('reservation');
Route::get('/sessionListReservation', [ReservationController::class, 'sessionListReservation'])->name('sessionList');

Route::get('/accueil', function () {
    return view('welcome');
})-> name('index');

Route::post('/insert-single-row/{id}', [ReservationController::class, 'insertReservation'])->name('insertReservation');


// Route::get('/', function () {
//     return view('lien');
// })-> name('lienCategorie');


Route::get('/',[CategorieController::class,'selectCategorie']) -> name('lien');
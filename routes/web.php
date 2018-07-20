<?php

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

Route::get('/', function () {
    return view('welcome');
});
Route::Post('/Register','login@registor');
Route::post('/Login','login@loginaccount');
Route::post('/restpassword','login@resetpassword');
Route::post('/updateuser','login@updateuser');
Route::post('/insertplace','place@insert');
Route::post('/searchplace','place@searchplace');
Route::post('/count','place@countclick');

Route::get('/reports','place@getcountpharmacy');




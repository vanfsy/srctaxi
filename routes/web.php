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

Route::get('/', 'HomeController@index')->name('home');
Route::resource('article', 'ArticleController', array('names' => 'article'));
Route::resource('company', 'CompanyController', array('names' => 'company'));
Route::resource('application', 'ApplicationController', array('names' => 'application'));

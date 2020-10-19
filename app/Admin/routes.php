<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

//    $router->get('/', 'HomeController@index')->name('home');
    $router->get('/', 'CompanyController@index')->name('home');
    Route::resource('company', 'CompanyController', array('names' => 'admin.company'));
    Route::resource('article', 'ArticleController', array('names' => 'admin.article'));
    Route::resource('application', 'ApplicationController', array('names' => 'admin.application'));

    $router->get('/api/cities', 'CompanyController@apiCities')->name('api.cities');

});

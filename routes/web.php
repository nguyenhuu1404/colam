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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['as' => 'frontend.', 'namespace' => 'Frontend'], function() {
    Auth::routes();
    Route::get('/login/facebook', 'Auth\LoginController@redirectToProviderFacebook');
    Route::get('/login/facebook/callback', 'Auth\LoginController@handleProviderCallbackFacebook');
    Route::get('/login/google', 'Auth\LoginController@redirectToProviderGoogle');
    Route::get('/login/google/callback', 'Auth\LoginController@handleProviderCallbackGoogle');

    Route::get('/khoa-hoc', 'PackageController@index');
    Route::get('/khoa-hoc-cua-toi', 'PackageController@myPackage');
    Route::get('/khoa-hoc/combo/{id}-{slug}', 'PackageController@combo')->where(['id' => '[0-9]+']);
    Route::get('/khoa-hoc/{packageId}-{id}-{slug}', 'CourseController@index')->where(['id' => '[0-9]+', 'packageId' => '[0-9]+']);
    Route::get('/khoa-hoc/{course}/{courseId}-{id}-{slug}', 'LessonController@index')->where(['id' => '[0-9]+', 'courseId' => '[0-9]+']);

    Route::get('/kiem-tra/{courseId}-{lessonId}-{id}-{slug}', 'TestController@index')->where(['id' => '[0-9]+', 'courseId' => '[0-9]+', 'lessonId' => '[0-9]+']);

    Route::get('/thanh-toan/{id}-{slug}', 'PaymentController@index')->where(['id' => '[0-9]+']);

    //Route::get('/users/{id}', 'UserController@show')->where('id','[0-9]+')->name('user.show');
    //Route::put('/users/{id}', 'UserController@update')->name('user.update');

    Route::get('/tin-tuc', 'NewController@index');
    Route::get('/tin-tuc/{id}-{slug}', 'NewController@detail')->where(['id' => '[0-9]+']);
    Route::get('/ho-tro', 'ContactController@index');


    Route::get('/', 'HomeController@index')->name('home.index');

});

Route::group(['as' => 'api.', 'prefix' => 'api', 'namespace' => 'Frontend'], function() {
    Route::post('/package/getSinglePackages', 'PackageController@getSinglePackages')->name('package.getSinglePackages');
    Route::post('/package/getComboPackages', 'PackageController@getComboPackages')->name('package.getComboPackages');

});




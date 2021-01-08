<?php

use Illuminate\Http\Request;

//User
Route::post('login', 'Api\AuthController@login');
Route::post('register', 'Api\AuthController@register');
Route::get('logout', 'Api\AuthController@logout');
Route::post('save_user_info', 'Api\AuthController@saveUserInfo');
Route::post('getprofile', 'Api\TugasController@getUser');
Route::post('updateprofile', 'Api\TugasController@updateUser');
Route::post('updatepassword', 'Api\AuthController@editPass');

//post
Route::post('posts/create', 'Api\TugasController@create');
Route::post('posts/delete', 'Api\TugasController@delete');
Route::post('posts/update', 'Api\TugasController@update');
Route::get('posts', 'Api\TugasController@task');

//comment
Route::post('comments/create', 'Api\CommentsController@create')->middleware('jwtAuth');
Route::post('comments/delete', 'Api\CommentsController@delete')->middleware('jwtAuth');
Route::post('comments/update', 'Api\CommentsController@update')->middleware('jwtAuth');
Route::post('posts/comments', 'Api\CommentsController@comments')->middleware('jwtAuth');

//like
Route::post('posts/like', 'Api\LikesController@like')->middleware('jwtAuth');
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

use App\Events\TaskAdded;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/todos', function () {
    return view('todos.index');
});

Route::get('/quiz', function () {
    return view('quiz.index');
});

Route::get('/tasks', function () {
    $task = ['id' => 1, 'name' => 'メールの確認'];
    event(new TaskAdded($task));
});

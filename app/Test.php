<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $table = 'tests';

    protected $fillable = ['slug', 'name'];

    function lessons() {
        return $this->belongsToMany('App\Lesson', 'lesson_test', 'test_id', 'lesson_id');
    }

    public function questions() {
        return $this->hasMany('App\Question', 'test_id', 'id');
    }
}

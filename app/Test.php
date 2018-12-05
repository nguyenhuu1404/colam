<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $table = 'tests';

    protected $fillable = ['slug', 'name'];

    public function lesson(){
        return $this->belongsTo('App\Lesson', 'test_id', 'id');
    }
    function lessons() {
        return $this->belongsToMany('App\Lesson', 'lesson_test', 'test_id', 'lesson_id');
    }
}

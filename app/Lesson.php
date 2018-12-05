<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    protected $table = 'lessons';

    protected $fillable = ['slug', 'name'];

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }

    function courses(){
        return $this->belongsToMany('App\Course', 'course_lesson', 'lesson_id', 'course_id');
    }
    function tests() {
        return $this->belongsToMany('App\Test', 'lesson_test', 'lesson_id', 'test_id');
    }
}

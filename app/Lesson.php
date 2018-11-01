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
        return $this->belongsToMany('App\Courses', 'course_lesson', 'lession_id', 'course_id');
    }
    function tests() {
        return $this->hasMany('App\Test', 'test_id', 'id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $table = 'packages';

    protected $fillable = ['slug', 'name'];
    function courses(){
        return $this->belongsToMany('App\Course', 'course_package', 'package_id', 'course_id');
    }
}

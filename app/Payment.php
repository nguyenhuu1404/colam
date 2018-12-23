<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = 'payments';

    protected $fillable = ['user_id', 'course_id', 'package_id', 'price', 'start_date', 'end_date', 'status'];
    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
    public function course(){
        return $this->belongsTo('App\Course', 'course_id', 'id');
    }
    public function package(){
        return $this->belongsTo('App\Package', 'package_id', 'id');
    }
}

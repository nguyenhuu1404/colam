<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = 'payments';

    protected $fillable = ['user_id', 'course_id', 'price', 'start_date', 'end_date', 'status', 'package_id'];
    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}

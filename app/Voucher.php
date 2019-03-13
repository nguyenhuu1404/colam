<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Voucher extends Model
{
    protected $table = 'vouchers';
    public function course(){
        return $this->belongsTo('App\Course', 'course_id', 'id');
    }
    public function package(){
        return $this->belongsTo('App\Package', 'package_id', 'id');
    }
}

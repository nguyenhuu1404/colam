<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable = ['user_id', 'course_id', 'price', 'key', 'package_id', 'payment_method', 'bank_code', 'fullname', 'email', 'phone', 'address_ship', 'status', 'orderstatus', 'note', 'more'];

}

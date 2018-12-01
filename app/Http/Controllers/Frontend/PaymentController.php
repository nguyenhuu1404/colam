<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PaymentController extends Controller
{
    public function course(){
        return view('frontend.payment.index');
    }
    public function combo(){
        return view('frontend.payment.index');
    }
}

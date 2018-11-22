<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Banner;

class HomeController extends Controller
{

    function index(){
        $data['banners'] = Banner::orderBy('order', 'desc')->where('status', 1)->get();
        return view('frontend.home.index', $data);
    }
}

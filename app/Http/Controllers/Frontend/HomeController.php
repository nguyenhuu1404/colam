<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Banner;
use App\Package;

class HomeController extends Controller
{

    function index(){
        $data['banners'] = Banner::orderBy('order', 'desc')->where('status', 1)->get();
        $data['recomand'] = Package::where('status', 1)->where('is_home', 1)->first()->toArray();

        return view('frontend.home.index', $data);
    }
}

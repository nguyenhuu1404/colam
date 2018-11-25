<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CourseController extends Controller
{
    public function index(){
        $data = [];
        return view('frontend.courses.index', $data);
    }
}

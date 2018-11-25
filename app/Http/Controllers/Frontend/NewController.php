<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Models\Post;

class NewController extends Controller
{
    public function index(){

        $data['news'] = Post::where('status', 1)->orderBy('id', 'desc')->get();
        return view('frontend.news.index', $data);
    }
}

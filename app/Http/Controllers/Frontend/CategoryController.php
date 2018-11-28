<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function index(){

        $data['news'] = Post::where('status', 1)->orderBy('id', 'desc')->get();
        return view('frontend.news.index', $data);
    }
    function detail($id){
    	$post = Post::where('id', $id)->first()->toArray();
        $data['post'] = $post;
        $data['related'] = [];
        if( $post['category_id'] ){
        	$data['related'] = Post::where(['category_id' => $post['category_id']])->whereNotIn('id',[$id])->limit(5)->get()->toArray();
        }
        $data['categories'] = Category::get()->toArray();
        dd($data['categories']);
        return view('frontend.news.detail', $data);
    }
}

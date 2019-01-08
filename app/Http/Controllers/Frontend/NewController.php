<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use App\Ad;

class NewController extends Controller
{
    public function index(){
        $data['title'] = 'Tin tức';
        $data['description'] = 'Tin tức';
        $data['news'] = Post::where('status', 1)->orderBy('id', 'desc')->paginate(5);
        $data['categories'] = Category::get()->toArray();
        return view('frontend.news.index', $data);
    }
    function detail($id){
        $post = Post::where('id', $id)->first()->toArray();
        $data['title'] = $post['title'];
        $data['description'] = $post['meta_description'];
        $data['curentCate'] = $post['category_id'];
        $data['post'] = $post;
        $data['related'] = [];
        if( $post['category_id'] ){
            $data['related'] = Post::where(['category_id' => $post['category_id']])->whereNotIn('id',[$id])->limit(5)->get()->toArray();
        }
        $data['ads'] = Ad::where('status', 1)->where('page', 'news')->orderBy('id', 'desc')->get();
        $data['categories'] = Category::get()->toArray();

        //dd($data['categories']);
        return view('frontend.news.detail', $data);
    }
    public function category($categoryId){
        $data['news'] = Post::where(['status' => 1, 'category_id' => $categoryId])->orderBy('id', 'desc')->paginate(5);
        $data['curentCate'] = Category::where('id', $categoryId)->get()->first()->toArray();
        $data['categories'] = Category::get()->toArray();
        $data['title'] = $data['curentCate']['name'];
        $data['description'] = $data['curentCate']['description'];
        return view('frontend.news.category', $data);
    }
}

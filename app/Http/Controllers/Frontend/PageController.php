<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Models\Page;

class PageController extends Controller
{
    public function index($slug){
        $page = Page::where(['slug' => $slug, 'status' => 'ACTIVE'])->get()->first()->toArray();
        $data['page'] = $page;
        $data['title'] = $page['title'];
        $data['description'] = $page['meta_description'];

        return view('frontend.pages.index', $data);
    }
}

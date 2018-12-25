<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Faq;
class FaqController extends Controller
{
    public function index(){
        $data['title'] = "Câu hỏi thường gặp";
        $data['description'] = "Câu hỏi thường gặp";
        $data['data'] = Faq::where('status', 1)->limit(6)->get()->toArray();
        return view('frontend.faq.index', $data);
    }
}

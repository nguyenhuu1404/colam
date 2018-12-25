<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function index(){
        $data['title'] = 'Liên hệ';
        $data['description'] = 'Liên hệ ngay với chúng tôi! Chúng tôi sẽ giải quyết mọi thắc mắc của bạn.';
        return view('frontend.contact.index', $data);
    }

}

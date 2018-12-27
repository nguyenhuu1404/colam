<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\Auth;

use App\Contact;

class ContactController extends Controller
{
    public function index(){
        $data['title'] = 'Liên hệ';
        $data['description'] = 'Liên hệ ngay với chúng tôi! Chúng tôi sẽ giải quyết mọi thắc mắc của bạn.';
        return view('frontend.contact.index', $data);
    }
    public function save(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'content' => 'required',
        ],[
            'required' => ':attribute không được bỏ trống.',
            'email' => ':attribute không hợp lệ.',
        ]);

        if($validator->fails()) {
            return redirect('/lien-he')
                        ->withErrors($validator)
                        ->withInput();
        }else{
            $contact = [
                'user_id' => Auth::id(),
                'name' => $request->input('name'),
                'phone' => $request->input('phone'),
                'email' => $request->input('email'),
                'content' => $request->input('content'),
            ];
            Contact::create($contact);
            return redirect('/lien-he');
        }
    }

}

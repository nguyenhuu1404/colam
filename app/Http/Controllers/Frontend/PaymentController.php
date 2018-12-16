<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use TongVanDuc\NganLuong\Facades\NLBankCharge;

use App\Payment;
use App\Order;
use App\Package;
use App\Course;
use App\User;

class PaymentController extends Controller
{
    public function updatePhone(Request $request){
        if ($request->ajax()) {
            $phone = $request->input('phone');
            $user = User::find(Auth::id());
            $user->phone = $phone;
            $user->save();
        }
    }
    public function course($courseId){
        $data['title'] = 'Thanh toán';
        $course = Course::where('id', $courseId)->get()->first();
        $data['course'] = $course;
        $data['url']='/thanh-toan/'.$courseId.'-'.$course->slug;
        if (Auth::check()) {
            $user = Auth::user();
            if($this->checkPaymentByCourse($user['id'], $courseId)){
                if($this->checkUserByCourse($user['id'], $courseId)){
                    return redirect('/khoa-hoc/'.$course['id'].'-'.$course['slug']);
                }else{
                    return redirect('/gia-han/'.$course['id'].'-'.$course['slug']);
                }
            }else{
                $data['user'] = $user;
                return view('frontend.payment.index', $data);
            }


        }else{
            return view('frontend.payment.login', $data);
        }
    }
    public function paymentCourse(Request $request){
        //dd($request->input());
        //dd(NLBankCharge::ATM($request->input()));
        $nl_result = NLBankCharge::ATM($request->input());
        if ($nl_result->error_code =='00'){

            header('Location: '.$nl_result->checkout_url);
            exit;
        }else{
            echo $nl_result->error_message;
        }
    }

    public function combo($packageId){
        $data['title'] = 'Thanh toán';
        $package = Package::where('id', $packageId)->get()->first();
        $data['package'] = $package;
        $data['url']='/thanh-toan/package/'.$packageId.'-'.$package->slug;
        if (Auth::check()) {
            $user = Auth::user();
            if($this->checkPaymentByPackage($user['id'], $packageId)){
                if($this->checkUserByPackage($user['id'], $packageId)){
                    return redirect('/khoa-hoc/package/'.$package['id'].'-'.$package['slug']);
                }else{
                    return redirect('/gia-han/package/'.$package['id'].'-'.$package['slug']);
                }
            }else{
                return view('frontend.payment.combo', $data);
            }

        }else{
            return view('frontend.payment.logincombo', $data);
        }
    }
    public function moreCourse($courseId){
        $data['title'] = 'Gia hạn khóa học';
        $course = Course::where('id', $courseId)->get()->first();
        $data['course'] = $course;
        $data['url']='/thanh-toan/'.$courseId.'-'.$course->slug;
        if (Auth::check()) {
            $user = Auth::user();
            dd($user);
            return view('frontend.payment.index', $data);
        }else{
            return view('frontend.payment.login', $data);
        }
    }
    public function moreCombo($packageId){
        $data['title'] = 'Gia hạn khóa học';
        $package = Package::where('id', $packageId)->get()->first();
        $data['package'] = $package;
        $data['url']='/thanh-toan/package/'.$packageId.'-'.$package->slug;
        if (Auth::check()) {
            return view('frontend.payment.combo', $data);
        }else{
            return view('frontend.payment.logincombo', $data);
        }
    }
    public function checkPaymentByCourse($userId, $courseId){

        $checkPayment = Payment::where(['user_id' => $userId, 'course_id' =>  $courseId, 'status' => 1])->get()->count();
        if($checkPayment > 0){
            return true;
        }else{
            $packages =  DB::table('course_package')->select('package_id')->where('course_id', $courseId)->get();

            if($packages){
                $packageIds = [];
                foreach($packages as $package){
                    $packageIds[] = $package->package_id;
                }

                $checkPackagePayment = Payment::where(['user_id' => $userId, 'status' => 1])->whereIn('package_id', $packageIds)->get()->count();
                if($checkPackagePayment >0 ){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }

        }
    }
    public function checkUserByCourse($userId, $courseId){
        $dateNow = date('Y-m-d');
        $checkUser = Payment::where(['user_id' => $userId, 'course_id' =>  $courseId, 'status' => 1])->where('end_date', '>=', $dateNow)->get()->count();
        if($checkUser > 0){
            return true;
        }else{
            $packages =  DB::table('course_package')->select('package_id')->where('course_id', $courseId)->get();
            //dd($packages);
            if($packages){
                $packageIds = [];
                foreach($packages as $package){
                    $packageIds[] = $package->package_id;
                }
                $checkPackageUser = DB::table('payments')->where(['user_id' => $userId, 'status' => 1])->whereIn('package_id', $packageIds)->where('end_date', '>=', $dateNow)->get()->count();
                if($checkPackageUser > 0 ){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }

        }
    }
    public function checkPaymentByPackage($userId, $packageId){

        $checkPayment = Payment::where(['user_id' => $userId, 'package_id' =>  $packageId, 'status' => 1])->get()->count();
        if($checkPayment > 0){
            return true;
        }else{
            return false;
        }
    }
    public function checkUserByPackage($userId, $packageId){
        $dateNow = date('Y-m-d');
        $checkUser = Payment::where(['user_id' => $userId, 'package_id' =>  $packageId, 'status' => 1])->where('end_date', '>=', $dateNow)->get()->count();
        if($checkUser > 0){
            return true;
        }else{
            return false;
        }
    }
}

<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use TongVanDuc\NganLuong\Facades\NLBankCharge;
use Validator;

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
    public function updateAddress(Request $request){
        if ($request->ajax()) {
            $address = $request->input('address');
            $user = User::find(Auth::id());
            $user->address = $address;
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

        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'option_payment' => 'required',
        ],[
            'required' => ':attribute không được bỏ trống.',
        ]);

        if($validator->fails()) {
            return redirect('/thanh-toan/'.$request->input('course_id').'-'.$request->input('course_url'))
                        ->withErrors($validator)
                        ->withInput();
        }else{
            if($request->input('option_payment') == 'CK'){

            }else if($request->input('option_payment') == 'ATM_ONLINE'){
                $nl_result = NLBankCharge::ATM($request->input());

                if(isset($nl_result->error_code)){
                    if($nl_result->error_code =='00'){
                        header('Location: '.$nl_result->checkout_url);
                        exit;
                    }else{
                        return redirect('/thanh-toan/'.$request->input('course_id').'-'.$request->input('course_url'))
                        ->withErrors(['bank_code' => 'Chưa chọn ngân hàng.'])
                        ->withInput();
                    }

                }else{
                    return redirect('/thanh-toan/'.$request->input('course_id').'-'.$request->input('course_url'))
                        ->withErrors(['bank_code' => 'Chưa chọn ngân hàng.'])
                        ->withInput();
                }

            }else if($request->input('option_payment') == 'VISA'){
                $nl_result = NLBankCharge::VISA($request->input());
                if(isset($nl_result->error_code)){
                    if($nl_result->error_code =='00'){
                        header('Location: '.$nl_result->checkout_url);
                        exit;
                    }else{
                        return redirect('/thanh-toan/'.$request->input('course_id').'-'.$request->input('course_url'))
                        ->withErrors(['bank_code' => 'Chưa chọn ngân hàng.'])
                        ->withInput();
                    }

                }else{
                    return redirect('/thanh-toan/'.$request->input('course_id').'-'.$request->input('course_url'))
                        ->withErrors(['bank_code' => 'Chưa chọn thẻ.'])
                        ->withInput();
                }
            }
        }

    }
    public function successCourse(Request $request, $courseId){
        //dd($courseId);
        $course = Course::where('id', $courseId)->get()->first();

        $price = $course['price'];
        if($course['price_sale']){
            $price = $course['price_sale'];
        }
        $userId = Auth::id();
        $key = uniqid();
        $order = [
            'user_id' => $userId,
            'course_id' => $courseId,
            'price' => $price,
            'key' => $key,

        ];
        $result = NLBankCharge::TransactionDetail($request->input('token'));
        if(isset($result['status']) && $result['status'] === true){
            $courseTime = $course['time'];
            $xml = $result['data'];
            $json = json_encode($xml);
            $dataNl = json_decode($json,TRUE);

            $order['payment_method'] = $dataNl['payment_method'];
            $order['bank_code'] = $dataNl['bank_code'];
            $order['fullname'] = $dataNl['buyer_fullname'];
            $order['email'] = $dataNl['buyer_email'];
            $order['phone'] = $dataNl['buyer_mobile'];
            $order['address_ship'] = $dataNl['buyer_address'];
            $order['status'] = 1;
            $order['order_status'] = 'completed';

            $insertOder = Order::create($order);
            //active tai khoan
            $strMonth = '+'.$courseTime.' months';
            $end_date = date('Y-m-d', strtotime($strMonth, strtotime(date('Y-m-d'))));
            $payment = [
                'user_id' => $userId,
                'course_id' => $courseId,
                'price' => $price,
                'start_date' =>  date('Y-m-d'),
                'end_date' => $end_date,
                'status' => 1
            ];
            Payment::create($payment);

            return redirect('/payment/thank/'.$key);
        }else{

        }

    }
    public function thank($key){
        $order = Order::where('key', $key)->get()->first();
        $data['order'] = $order;
        if($order['payment_method'] == 'ATM_ONLINE'){
            $data['message'] = 'Thanh toán thành công! tài khoản của bạn đã được kích hoạt!';
            return  view('frontend.payment.thank', $data);
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
                $data['user'] = $user;
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
            $data['user'] = $user;
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
            $user = Auth::user();
            $data['user'] = $user;
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

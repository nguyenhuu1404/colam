<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Package;
use App\Course;
use App\Payment;
use App\User;

class PackageController extends Controller
{
    public function combo($packageId){
        $package = Package::where('id', $packageId)->first()->toArray();
        $package['isBuy'] = false;
        if (Auth::check()) {
            $userId = Auth::id();
            if($this->checkPaymentByPackage($userId, $package['id'])){
                $package['isBuy'] = true;
            }
        }
        $data['package'] = $package;
        $data['courses'] = Package::find($packageId)->courses()->get()->toArray();
        //dd($data);
        return view('frontend.packages.combo', $data);
    }
    public function checkPaymentByPackage($userId, $packageId){

        $checkPayment = Payment::where(['user_id' => $userId, 'package_id' =>  $packageId, 'status' => 1])->get()->count();
        if($checkPayment > 0){
            return true;
        }else{
            return false;
        }
    }
    public function index(){

        $data['title'] = 'Các khóa học';
        $data['description'] = 'Các khóa học';
        $data['courses'] = Course::where(['status' => 1])->get()->toArray();
        $data['comboPackages'] = Package::where('status', '1')->get()->toArray();
        return view('frontend.packages.index', $data);
    }
    public function course(){
        $data['title'] = 'Các khóa học đơn';
        $data['description'] = 'Các khóa học đơn';
        $data['courses'] = Course::where(['status' => 1])->get()->toArray();
        return view('frontend.packages.index', $data);
    }
    public function coursecombo(){
        $data['title'] = 'Các khóa học combo';
        $data['description'] = 'Các khóa học combo';
        $data['comboPackages'] = Package::where('status', '1')->get()->toArray();
        return view('frontend.packages.index', $data);
    }
    public function myPackage() {
        $userId = Auth::id();

        $packages = Package::all()->toArray();
        $allPackages = [];
        if($packages){
            foreach($packages as $package){
                $allPackages[$package['id']] = $package;
            }
        }
        $courses = Course::all()->toArray();
        $allCourses = [];
        if($courses){
            foreach($courses as $course){
                $allCourses[$course['id']] = $course;
            }
        }

        $myPackages = User::find($userId)->payments;
        $dataMyPackages = [];
        if($myPackages){
            foreach($myPackages as $myPackage){
                if($myPackage['package_id'] != null){
                    $allPackages[$myPackage['package_id']]['start_date'] = $myPackage['start_date'];
                    $allPackages[$myPackage['package_id']]['end_date'] = $myPackage['end_date'];
                    $dataMyPackages['packages'][] = $allPackages[$myPackage['package_id']];

                }else{
                    $allCourses[$myPackage['course_id']]['start_date'] = $myPackage['start_date'];
                    $allCourses[$myPackage['course_id']]['end_date'] = $myPackage['end_date'];
                    $dataMyPackages['courses'][] = $allCourses[$myPackage['course_id']];

                }

            }
        }
        $data['title'] = 'Khóa học của tôi';
        $data['description'] = 'Khóa học của tôi';
        $data['myPackages'] = $dataMyPackages;
        return view('frontend.packages.mypackage', $data);
    }

    public function getComboPackages(Request $request){

        if ($request->ajax()) {
            $packages = Package::where(['status' => 1])->get()->toArray();
            $data['courseTypes'] = config('app.courseTypes');
            $data['comboPackages'] = $packages;
            return view('frontend.ajax.combopackage', $data);

        }

    }
}

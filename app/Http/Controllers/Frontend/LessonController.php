<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

use App\Course;
use App\Lesson;
use App\Payment;
use App\Package;

class LessonController extends Controller
{
    public function index($course, $courseId, $lessonId){
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'asc')->get()->toArray();
        $course = Course::where('id', $courseId)->get()->first()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $curentLesson = Lesson::where('id', $lessonId)->first()->toArray();
        $data['curentLesson'] = $curentLesson;
        $data['tests'] = Lesson::find($lessonId)->tests()->get();
        $data['title'] = $curentLesson['name'];
        if($curentLesson['trial'] == 1){
            return view('frontend.lessons.trial', $data);
        }else{
            if (Auth::check()) {
                $userId = Auth::id();

                if($this->checkPayment($userId, $courseId)){
                    if($this->checkUser($userId, $courseId)){
                        return view('frontend.lessons.index', $data);
                    }else{
                        return view('frontend.lessons.more', $data);
                    }
                }else{
                    return view('frontend.lessons.nouser', $data);
                }

            }else{
                $data['url'] = '/khoa-hoc/'.$course['slug'].'/'.$course['id'].'-'.$curentLesson['id'].'-'.$curentLesson['slug'];
                return view('frontend.lessons.nologin', $data);
            }
        }

    }
    public function checkPayment($userId, $courseId){

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
    public function checkUser($userId, $courseId){
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
}

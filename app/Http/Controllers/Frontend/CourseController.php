<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\Payment;

use App\Package;
use App\Course;
use App\Lesson;

class CourseController extends Controller
{
    public function index($courseId){

        $course = Course::where(['id'=> $courseId])->get()->first()->toArray();
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $course['isBuy'] = false;
        if (Auth::check()) {
            $userId = Auth::id();
            if($this->checkPayment($userId, $course['id'])){
                $course['isBuy'] = true;
            }
        }
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $data['others'] = Course::where('id', '!=', $courseId)->where('status', 1)->get();
        //dd($data);
        return view('frontend.courses.index', $data);
    }
    public function checkPayment($userId, $courseId){
        $checkPayment = Payment::where(['user_id' => $userId, 'course_id' =>  $courseId, 'status' => 1])->get()->count();
        if($checkPayment > 0){
            return true;
        }else{
            return false;
        }
    }
    public function getCourses(Request $request){
        if ($request->ajax()) {
            $courses = Course::where(['status' => 1])->get()->toArray();
            $dataCourses = [];
            if(count($courses) > 0){
                foreach($courses as $course){
                    if($course['type']){
                        $dataCourses[strtolower($course['type'])][] = $course;
                    }
                }
            }
            $data['courseTypes'] = config('app.courseTypes');
            $data['courses'] = $dataCourses;
            return view('frontend.ajax.singlepackage', $data);

        }
    }



}

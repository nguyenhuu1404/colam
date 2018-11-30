<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Course;
use App\Lesson;
use App\Payment;
use App\Package;

class LessonController extends Controller
{
    public function index($course, $packageId, $courseId, $lessonId){
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $course = Course::where('id', $courseId)->get()->first()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $curentLesson = Lesson::where('id', $lessonId)->first()->toArray();
        $data['curentLesson'] = $curentLesson;
        $data['packageId'] = $packageId;
        $data['title'] = $curentLesson['name'];
        if($curentLesson['trial'] == 1){
            return view('frontend.lessons.trial', $data);
        }else{
            if (Auth::check()) {
                $userId = Auth::id();
                $checkUser = Payment::where(['user_id' => $userId, 'course_id' => $course['id'], 'status' => 1])->get()->count();
                if($checkUser > 0){
                    return view('frontend.lessons.index', $data);
                }else{
                    $data['package'] = Package::where('id', $packageId)->get()->first()->toArray();
                    return view('frontend.lessons.nouser', $data);
                }

            }else{
                $data['url'] = '/khoa-hoc/'.$course['slug'].'/'.$course['id'].'-'.$curentLesson['id'].'-'.$curentLesson['slug'];
                return view('frontend.lessons.nologin', $data);
            }
        }

    }
}

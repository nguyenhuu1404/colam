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
    public function index($course, $courseId, $lessonId){
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $course = Course::where('id', $courseId)->get()->first()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $curentLesson = Lesson::where('id', $lessonId)->first()->toArray();
        $data['curentLesson'] = $curentLesson;

        $data['title'] = $curentLesson['name'];
        if($curentLesson['trial'] == 1){
            return view('frontend.lessons.trial', $data);
        }else{
            if (Auth::check()) {
                $userId = Auth::id();
                $dateNow = date('Y-m-d');;
                $checkUser = Payment::where(['user_id' => $userId, 'course_id' => $course['id'], 'status' => 1])->where('end_date', '>=', $dateNow)->get()->count();
                if($checkUser > 0){
                    return view('frontend.lessons.index', $data);
                }else{

                    return view('frontend.lessons.nouser', $data);
                }

            }else{
                $data['url'] = '/khoa-hoc/'.$course['slug'].'/'.$course['id'].'-'.$curentLesson['id'].'-'.$curentLesson['slug'];
                return view('frontend.lessons.nologin', $data);
            }
        }

    }
}

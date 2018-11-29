<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Course;
use App\Lesson;

class LessonController extends Controller
{
    public function index($course, $courseId, $lessonId){
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $data['course'] = Course::where('id', $courseId)->get()->first()->toArray();
        $data['lessons'] = buildTree($lessons);
        $data['curentLesson'] = Lesson::where('id', $lessonId)->first()->toArray();
        return view('frontend.lessons.index', $data);
    }
}

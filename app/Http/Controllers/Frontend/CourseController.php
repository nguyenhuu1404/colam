<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Package;
use App\Course;
use App\Lesson;

class CourseController extends Controller
{
    public function index($packageId, $courseId){

        $course = Course::where(['id'=> $courseId])->get()->first()->toArray();
        $course['packageId'] = $packageId;
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $data['packageId'] = $packageId;
        //dd($data);
        return view('frontend.courses.index', $data);
    }



}

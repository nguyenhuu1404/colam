<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Package;
use App\Course;
use App\Lesson;

class CourseController extends Controller
{
    public function index($courseId){

        $course = Course::where(['id'=> $courseId])->get()->first()->toArray();
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        //dd($data);
        return view('frontend.courses.index', $data);
    }

    public function getCourses(){
        if ($request->ajax()) {
            $courses = Package::where(['status' => 1])->get()->toArray();
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

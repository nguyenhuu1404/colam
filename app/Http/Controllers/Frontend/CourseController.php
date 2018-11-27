<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Course;
use App\Lesson;

class CourseController extends Controller
{
    public function index($courseId){

        $data['course'] = Course::where(['id'=> $courseId])->get()->first()->toArray();
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'desc')->get()->toArray();
        $data['lessons'] = $this->makeParent($lessons);
        return view('frontend.courses.index', $data);
    }
    public function makeParent($items) {
        $newArr = [];
        if (count($items) > 0) {
            foreach ($items as $item) {
                $newArr[$item['parent_id']][] = $item;
            }
        }
        return $newArr;
    }

}

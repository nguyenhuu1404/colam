<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Banner;
use App\Package;
use App\Lesson;
use App\Course;

class HomeController extends Controller
{

    function index(){
        $data['banners'] = Banner::orderBy('order', 'desc')->where('status', 1)->get();

        $data['recomand'] = Package::where('status', 1)->where('is_home', 1)->first()->toArray();
        if($data['recomand']['type'] == 'single'){
            $courses = Package::find($data['recomand']['id'])->courses()->get()->toArray();
            $data['recomand']['course_id'] = $courses['id'];
            $data['recomand']['course_slug'] = $courses['slug'];
        }

        $trialLessons = Lesson::where(['status'=> 1, 'is_home'=>1, 'trial' => 1])->get();
        $courseTrialLesson = [];
        foreach($trialLessons as $lesson){
            $courseTrialLesson[$lesson['id']] = $lesson->courses()->get()->toArray();
        }
        $data['trialLessons'] = $trialLessons->toArray();
        $data['courseTrialLesson'] = $courseTrialLesson;

        $singlePackages = Package::where(['type' => 'single', 'status' => 1])->get()->toArray();
            $dataPackages = [];
            if(count($singlePackages) > 0){
                foreach($singlePackages as $package){
                    if($package['course_type'] !== null){
                        $dataPackages[$package['course_type']][] = $package;
                    }else{
                        $dataPackages = $singlePackages;
                    }
                }
            }
        $data['singlePackages'] = $dataPackages;
        $data['courseTypes'] = config('app.courseTypes');

        return view('frontend.home.index', $data);
    }
}

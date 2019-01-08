<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\Payment;

use App\Comment;
use App\Package;
use App\Course;
use App\Lesson;
use App\Ad;

class CourseController extends Controller
{
    public function index($courseId){

        $course = Course::where(['id'=> $courseId])->get()->first()->toArray();
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'asc')->get()->toArray();
        $course['isBuy'] = false;
        if (Auth::check()) {
            $userId = Auth::id();
            if($this->checkPayment($userId, $course['id'])){
                $course['isBuy'] = true;
            }
        }
        $data['title'] = $course['name'];
        $data['description'] = $course['description'];
        $data['course'] = $course;
        $data['ads'] = Ad::where('status', 1)->where('page', 'course')->orderBy('id', 'desc')->get();
        $data['lessons'] = buildTree($lessons);
        $data['others'] = Course::where('id', '!=', $courseId)->where('status', 1)->limit(5)->inRandomOrder()->get();

        $comment = Comment::where(['course_id' => $courseId, 'status' => 1])->get()->toArray();
        $data['comments'] = buildTree($comment);

        return view('frontend.courses.index', $data);
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
    public function addComment(Request $request){
        if ($request->ajax() && Auth::check()) {
            if($request->input('content')){
                $user = Auth::user();
                $dataComment = [
                    'user_id' =>  Auth::id(),
                    'username' => $user['name'],
                    'avatar' => $user['avatar'],
                    'course_id' => $request->input('courseId'),
                    'content' => $request->input('content'),
                    'parent_id' => $request->input('parent_id'),
                    'status' => 1
                ];
                Comment::create($dataComment);
            }

        }
    }



}

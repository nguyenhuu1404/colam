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
use App\Comment;
use App\Ad;

class LessonController extends Controller
{
    public function index($course, $courseId, $lessonId){
        $lessons = Course::find($courseId)->lessons()->orderBy('order', 'asc')->get()->toArray();
        $course = Course::where('id', $courseId)->get()->first()->toArray();
        $data['course'] = $course;
        $data['lessons'] = buildTree($lessons);
        $curentLesson = Lesson::where('id', $lessonId)->first()->toArray();
        $ormLesson = Lesson::find($lessonId);
        $ormLesson->view = $curentLesson['view'] + 1;
        $ormLesson->save();
        $data['curentLesson'] = $curentLesson;
        $data['tests'] = Lesson::find($lessonId)->tests()->get();
        $data['ads'] = Ad::where('status', 1)->where('page', 'lesson')->orderBy('id', 'desc')->get();
        $data['title'] = $curentLesson['name'];
        $data['description'] = $curentLesson['description'];
        $comment = Comment::where(['lesson_id' => $lessonId, 'status' => 1])->get()->toArray();
        $data['comments'] = buildTree($comment);
        if($curentLesson['trial'] == 1){
            $data['isBuy'] = false;
            if (Auth::check()) {
                $userId = Auth::id();
                if($this->checkPayment($userId, $courseId)){
                    $data['isBuy'] = true;
                }
            }
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
    public function addComment(Request $request){
        if ($request->ajax() && Auth::check()) {
            if($request->input('content')){
                $user = Auth::user();
                $dataComment = [
                    'user_id' =>  Auth::id(),
                    'username' => $user['name'],
                    'avatar' => $user['avatar'],
                    'lesson_id' => $request->input('lessonId'),
                    'content' => $request->input('content'),
                    'parent_id' => $request->input('parent_id'),
                    'status' => 1
                ];
                Comment::create($dataComment);
            }

        }
    }

}

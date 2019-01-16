<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Test;
use App\Lesson;
use App\Course;
use App\Question;
use App\Answer;

class TestController extends Controller
{
    function index(Request $request){
        if ($request->ajax()) {
            $courseId = $request->input('courseId');
            $lessonId = $request->input('lessonId');
            $testId = $request->input('testId');
            $test = Test::where('id', $testId)->get()->first();
            $questions = Question::where(['test_id' => $testId, 'status' => 1])->get()->toArray();

            $arrQuestionIds = array();
            foreach($questions as $question) {
                $arrQuestionIds[] = $question['id'];
            }
            $answers = Answer::whereIn('question_id', $arrQuestionIds)->where('status', 1)->get()->toArray();
            $processAnswer = array();
            foreach($answers as $val) {
                $processAnswer[$val['question_id']][] = $val;
            }
            $data['test'] = $test;
            $data['processAnswer'] = $processAnswer;
            $data['questions'] = $questions;
            $data['courseId'] = $courseId;
            $data['lessonId'] = $lessonId;
            $data['testId'] = $testId;
            //dd($data);

            return view('frontend.tests.index', $data);
        }
    }
}

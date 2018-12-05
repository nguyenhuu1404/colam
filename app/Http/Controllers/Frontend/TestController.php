<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Test;
use App\Lesson;
use App\Course;
use App\Question;
use App\Answer;

class TestController extends Controller
{
    function index($courseId, $lessonId, $testId){
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
        $data['processAnswer'] = $processAnswer;
        $data['questions'] = $questions;

        return view('frontend.tests.index', $data);
    }
}

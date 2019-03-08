@if($test['audio'] || $test['content'])
<div class="test-cauhoi w-100 mb-2 p-3 bg-warning ">
@if($test['audio'])
<?php $testAudio = json_decode($test['audio']);
    $testAudio = $testAudio[0]->download_link;
    $testAudio = str_replace('\\', '/', $testAudio);
?>
<audio controls>
    <source src="{{Storage::url($testAudio)}}" type="audio/mpeg">
</audio>
<!--span class="btn volume fa fa-volume-up" onclick="read_question(this, '{{Storage::url($testAudio)}}');"></span-->
@endif
{!!$test['content']!!}
</div>
@endif

    @if($questions)
    <form id="form_question_nn" class="question_content pd-0 item mgb15 form-horizontal bd-div bgclor" method="post">
        @foreach($questions as $key => $value)
        <div class="row top20">
                <div class="col-md-12">
                    <div class="full mb-3 cau question_{{$value['id']}}">
                        <div class="stt">Câu:  {{$key+1}} </div>
                        @if($value['audio'])
                        <?php $audio = json_decode($value['audio']);
                            $audio = $audio[0]->download_link;
                            $audio = str_replace('\\', '/', $audio);
                        ?>
                        <audio class="audio" controls>
                        <source src="{{Storage::url($audio)}}" type="audio/mpeg">
                        </audio>
                        <!--span id="sound-{{$value['id']}}" class="btn volume fa fa-volume-up" onclick="read_question(this, '{{Storage::url($audio)}}');"></span-->
                        @endif
                    </div>

                </div>

                <div class="col-md-12 mb-3">
                    <input type="hidden" name="questions[{{$value['id']}}]" value="{{$value['id']}}"/>

                    <div class="ptnn-title mb-3"> {!!$value['name']!!} </div>
                    <?php
                        //answer
                        $dataAnswer['answers'] = $processAnswer[$value['id']];
                        $dataAnswer['qestionId'] = $value['id'];
                    ?>
                    @if($value['type'] == 'd')
                        @include('frontend.tests.choice', $dataAnswer)
                    @else
                        @include('frontend.tests.choice2', $dataAnswer)
                    @endif

                    @if($value['explain'])
                    <div class="mb-3 explanation hidden">
                        <a href="#mobile-explan-{{$value['id']}}" class=" btn btn-success btn-show-exp" data-toggle="collapse">Lý giải</a>
                    </div>


                    <div id="mobile-explan-{{$value['id']}}" class="collapse item" style="border: 1px solid rgb(221, 221, 221);
                    border-radius: 5px;
                    padding: 10px;
                    text-align: justify;
                    background: rgb(255, 255, 255); margin-bottom:15px;">
                        <div class="item">
                        {!!$value['explain']!!}
                        </div>
                    </div>
                    @endif

                </div>

                <div class="line-question"></div>
        </div>
    @endforeach
    <div class="modal fade" id="showketqua" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Kết quả</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <b>Bạn làm đúng:</b> <span id="ketqua">0 câu</span>
                </div>

            </div>
        </div>
    </div>
    <div class="full mb-3 text-center">

        <button id="finish-primary" class="btn btn-primary" name="finish-choice" onclick="finish_choice({{count($questions)}});" type="button">
        Xem kết quả
        </button>
        <button onclick="getTest(this, {{$courseId}}, {{$lessonId}}, {{$testId}})" type="button" class="btn btn-primary">
            Làm lại
        </button>
        <button onclick="showAnswer();" type="button" class="btn btn-primary" >
            Xem đáp án
        </button>

    </div>
    </form>

@endif





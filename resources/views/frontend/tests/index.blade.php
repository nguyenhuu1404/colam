@if($test['audio'])
<?php $testAudio = json_decode($test['audio']);
    $testAudio = $testAudio[0]->download_link;
    $testAudio = str_replace('\\', '/', $testAudio);
?>
<div class="test-cauhoi border-dashed w-100 mb-2 p-4 ">
<span class="btn volume fa fa-volume-up" onclick="read_question(this, '{{Storage::url($testAudio)}}');"></span> {!!$test['content']!!}
</div>
@endif
<form id="form_question_nn" class="question_content pd-0 item mgb15 form-horizontal bd-div bgclor" method="post">

    @if($questions)
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
                        <span id="sound-{{$value['id']}}" class="btn volume fa fa-volume-up" onclick="read_question(this, '{{Storage::url($audio)}}');"></span>
                        @endif
                    </div>

                </div>

                <div class="col-md-12 mb-3">
                    <input type="hidden" name="questions[{{$value['id']}}]" value="{{$value['id']}}"/>

                    <div class="ptnn-title mb-3"> {{$value['name']}} </div>
                    <?php
                        //answer
                        $dataAnswer['answers'] = $processAnswer[$value['id']];
                        $dataAnswer['qestionId'] = $value['id'];
                    ?>
                    @include('frontend.tests.choice', $dataAnswer)

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

                </div>

                <div class="line-question"></div>
        </div>
    @endforeach
@endif

    <div class="full mb-3 text-center">

        <button id="finish-choice" class="btn btn-warning" name="finish-choice" onclick="finish_choice();" type="button">
           Xem đáp án
        </button>

    </div>

</form>


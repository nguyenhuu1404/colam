@extends('frontend.layouts.master')

@section('content')

<section class="banner">
    <img src="/images/banner-lesson.png">
    <div class="breadcrumb-position">
        <div class="container">
            <div class="title-breadcrumb">Học tiếng Nhật online</div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$curentLesson['name']}}</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<section class="lesson-box">
    <div class="container">
        <div class="row">
            <div class="col-xl-3">
            @if($lessons)
                <div class="title-slidebar">Tiến trình học</div>
                <div class="section-sb-current">
                    <ul class="section-sb-list">
                    @foreach($lessons as $lesson)
                        <li class="cat-item has_child {{($curentLesson['parent_id'] == $lesson['id']) ? 'opened' : ''}}">
                            <a href="javascript:void(0)">{{$lesson['name']}}</a>
                            @if(count($lesson['children']) > 0)
                            <ul class="children">

                                @foreach($lesson['children'] as $child)
                                    <li class="{{($curentLesson['id'] == $child['id']) ? 'active' : ''}}" >
                                    <a href="/khoa-hoc/{{$course['slug']}}/{{$course['id']}}-{{$child['id']}}-{{$child['slug']}}">
                                        {{$child['name']}}

                                        @if($child['trial'] == 1)
                                        <span class="free">Học thử</span>
                                        @else
                                            @if(!$isBuy)
                                            <i class="fa fa-lock pull-right"></i>
                                            @endif
                                        @endif
                                    </a>

                                    </li>
                                @endforeach

                            </ul>
                            @endif
                        </li>
                    @endforeach
                    </ul>
                </div>
            @endif
            @if($ads)
                @foreach($ads as $ad)
                <div class="section-sb-current">
                    <a href="{{$ad['link']}}">
                    <img src="{{ Storage::url( $ad['image'] )}}">
                    </a>
                </div>
                @endforeach
            @endif


            </div>
            <div class="col-xl-9 pd-0-30">
                <div class="title-content-lesson">
                    <div class="left-title-lesson">
                        <div class="h2">{{$course['name']}}</div>
                        <span>{{$course['time']}} tháng</span>
                    </div>
                    <div class="right-title-lesson">
                        <div>
                            <div class="h3">{{$curentLesson['name']}}</div>
                            <p>{{$curentLesson['view']}} lượt xem </p>
                        </div>
                    </div>
                </div>
                <div class="body-content-lesson">
                    <div class="row">
                        @if($curentLesson['youtube'] || $curentLesson['video'])
                        <div class="col-xl-12 bd-top-gray p-0">

                        </div>
                        @endif

                        <div class="col-xl-12 mt-3 p-0">
                            @if($curentLesson['trial'] == 1)
                                @if($curentLesson['youtube'])
                                <iframe class="iframe" src="https://www.youtube.com/embed/{{getYoutubeId($curentLesson['youtube'])}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                @else
                                    @if($curentLesson['video'])
                                    <link href="{{ asset('css/video-js.css') }}" rel="stylesheet">

                                    <script src="{{ asset('js/video.js') }}"></script>
                                    <script src="{{ asset('js/videojs-hlsjs-plugin.js') }}"></script>
                                    <script src="/videojs-quality-picker/dist/vjs-quality-picker.js"></script>

                                    <video  id="my-video" class="video-js iframe w-100" controls preload="auto" autoplay>
                                    <source src="/hls-{{$curentLesson['video']}}-{{$curentLesson['video']}}.mp4-<?php echo ($t = time())?>-<?php $video = $curentLesson['video']; echo md5("tk.$t.$video.$video.mp4")?>-playlist.m3u8">
                                    <p class="vjs-no-js">
                                        To view this video please enable JavaScript, and consider upgrading to a web browser that
                                        <a href="https://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
                                    </p>
                                    </video>
                                    <script>
                                    videojs('my-video').qualityPickerPlugin();
                                    </script>
                                    @endif
                                @endif
                            @endif
                            @if($curentLesson['content'])
                            <div class="mt-3">
                                {!! $curentLesson['content'] !!}
                            </div>
                            @endif

                            <?php if(isset($tests) && count($tests) > 0) { ?>
                            <hr/>
                            <div class="form-group text-center mt-3">
                                @foreach($tests as $index => $test)
                                    <button onclick="getTest(this, {{$course['id']}}, {{$curentLesson['id']}}, {{$test['id']}})" class="btn btn-primary test ml-2">Bài {{$index + 1}}</a>
                                @endforeach
                            </div>
                            <hr/>

                            <div id="showTest">

                            </div>
                            <?php } ?>
                        </div>

                        <div class="col-xl-12 p-0">
                            <div class="box-comment-lesson">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#comment">Ý kiến bình luận</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#facebook">Bình luận bằng facebook</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane container active" id="comment">
                                    <div class="body-comment">
                                                @if(Auth::check())
                                                <div class="item-body-comment">
                                                    <div class="parent-itemt">
                                                    <div class="avartar-item-comment"></div>
                                                        <div class="text-item-comment">
                                                            <div class="row">
                                                                <div class="col-md-9">
                                                                    <textarea id="textcomment" class="w-100"></textarea>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div onclick="addCommentLesson({{$curentLesson['id']}})" class="btn w-100 btn-warning">
                                                                    Đăng
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endif

                                                @if($comments)
                                                @foreach($comments as $comment)
                                                <div class="item-body-comment">
                                                    <div class="parent-itemt">
                                                        <div class="avartar-item-comment">
                                                            @if($comment['avatar'])
                                                            <img src="/images/img-avatar-1.png">
                                                            @endif
                                                        </div>
                                                        <div class="text-item-comment">
                                                            <div class="name-info-item-comment">{{$comment['username']}} <span>{{$comment['created_at']}}</span></div>
                                                            <div class="content-post-item-comment">{{$comment['content']}}</div>
                                                        </div>
                                                    </div>
                                                    <div class="w-100">
                                                        <div class="reply-comment">
                                                            <a data-toggle="collapse" href="#reply{{$comment['id']}}" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-comment"></i>
                                                            trả lời</a>
                                                        </div>
                                                        <div class="reply-comment">
                                                            <a data-toggle="collapse" href="#reply{{$comment['id']}}" role="button" aria-expanded="false" aria-controls="reply"><i class="fa fa-comments"></i>
                                                            <?php if(isset($comment['children'])) { echo count($comment['children']); } ?> phản hồi</a>
                                                        </div>
                                                    </div>


                                                    <div class="collapse w-75" id="reply{{$comment['id']}}">
                                                        @if(isset($comment['children']))
                                                        @foreach($comment['children'] as $child)
                                                        <div class="children-item">
                                                            <div class="avartar-item-comment">
                                                                @if($child['avatar'])
                                                                <img src="/images/img-avatar-1.png">
                                                                @endif
                                                            </div>
                                                            <div class="text-item-comment">
                                                                <div class="name-info-item-comment">{{$child['username']}} <span>{{$child['created_at']}}</span></div>
                                                                <div class="content-post-item-comment">{{$child['content']}}</div>
                                                            </div>
                                                        </div>
                                                        @endforeach
                                                        @endif

                                                        @if(Auth::check())
                                                        <div class="children-item">
                                                            <div class="avartar-item-comment">
                                                                @if($comment['avatar'])
                                                                <img src="/images/img-avatar-1.png">
                                                                @endif
                                                            </div>
                                                            <div class="text-item-comment">
                                                                <div class="row">
                                                                    <div class="col-md-9">
                                                                        <textarea id="textreply{{$comment['id']}}" class="w-100"></textarea>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div onclick="addReplyLesson({{$curentLesson['id']}}, {{$comment['id']}})" class="btn w-100 btn-warning" >
                                                                        Đăng
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        @endif

                                                    </div>

                                                </div>
                                                @endforeach
                                                @endif

                                        </div>
                                    </div>
                                    <div class="tab-pane container fade" id="facebook">
                                    <div class="fb-comments full" data-href="{{ url()->full() }}" data-width="100%" data-numposts="5"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection
@section('styles')
@stop
@push('scripts')

<script>
$(document).ready(function () {
    $('html, body').animate({
        scrollTop: $("div.title-content-lesson").offset().top
    }, 1000);
});

$('.cat-item a').click(function(){
    $(this).parent().toggleClass('opened');
})

function addCommentLesson(lessonId){
    var content = $('#textcomment').val();
    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    if(content.length > 0){
        $.ajax({
            method: "POST",
            url: "/lesson/addComment",
            data: {_token: CSRF_TOKEN, content: content, lessonId: lessonId}
        })
        .done(function( data ) {
            location.reload();
        });
    }else{
        alert('Bạn chưa nhập nội dung bình luận');
        $('#textcomment').focus();
        return false;
    }
}
function addReplyLesson(lessonId, parent_id){
    var content = $('#textreply'+parent_id).val();
    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    if(content.length > 0){
        $.ajax({
            method: "POST",
            url: "/lesson/addComment",
            data: {_token: CSRF_TOKEN, content: content, lessonId: lessonId, parent_id: parent_id}
        })
        .done(function( data ) {
            location.reload();
        });
    }else{
        alert('Bạn chưa nhập nội dung bình luận');
        $('#textreply'+parent_id).focus();
        return false;
    }
}
function getTest(that, courseId, lessonId, testId){
    if(testId){
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            method: "POST",
            url: "{{ route('api.test.index') }}",
            data: {_token: CSRF_TOKEN, courseId: courseId, lessonId: lessonId, testId: testId}
        })
        .done(function( data ) {
            $('#showTest').html(data);
            $('.test').removeClass('active');
            $(that).addClass('active');
        });
    }
}
function showAnswer(){


$('.wrong').each(function(i, item){
    if($(this).find('.dapan').is(':checked')){
        if(!$(this).hasClass('text-danger')){
            $(this).addClass('text-danger');
            $(this).find('.form-check-label').addClass('text-danger');
            $(this).append(' <span class="fa fa-times"></span>');
        }
        var istrue = $(this).parent().find('.check');
        if(!istrue.find('.form-check-label').hasClass('text-success')){
            istrue.addClass('text-success');
            istrue.append(' <span class="has-success fa fa-check"></span>');
            istrue.find('.form-check-label').addClass('text-success');
        }
        $(this).parent().next().show();
    }
});


}
 function finish_choice(total){

    	//$('#form_question_nn input').prop( "disabled", true );
        //$('#finish-choice').prop( "disabled", true );
        var trueAnswer = 0;
        $('.check').each(function(i, item){
            if($(this).find('.dapan').is(':checked')){
                if(!$(this).hasClass('text-success')){
                    $(this).addClass('text-success');
                    $(this).find('.form-check-label').addClass('text-success');
                    $(this).append(' <span class="has-success fa fa-check"></span>');
                }
                if($(this).find('.form-check-input').is(':checked')){
                    trueAnswer ++;
                }
                $(this).parent().next().show();
            }
        });
        $('.wrong').each(function(i, item){
            if($(this).find('.dapan').is(':checked')){
                if(!$(this).hasClass('text-danger')){
                    $(this).addClass('text-danger');
                    $(this).find('.form-check-label').addClass('text-danger');
                    $(this).append(' <span class="fa fa-times"></span>');
                }
                $(this).parent().next().show();
            }
        });


        //$('.explanation').show();

        $('#ketqua').text(trueAnswer+'/'+total+ ' câu');
        $('#showketqua').modal('show');
        $('#xemketqua').show();
    }
@if(isset($tests) && count($tests) > 0)
    getTest(this, <?=$course['id'];?>,<?=$curentLesson['id'];?>, <?=$tests[0]['id'];?>);
@endif
</script>

@endpush


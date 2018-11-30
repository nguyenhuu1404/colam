@extends('frontend.layouts.master')

@section('content')

<section class="banner">
    <img src="/images/banner-lesson.png">
    <div class="breadcrumb-position">
        <div class="container">
            <div class="title-breadcrumb">Học tiếng Nhật online</div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Các khóa học</li>
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
                                        <i class="fa fa-lock pull-right"></i>
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
                <div class="section-sb-current">
                    <img src="/images/sale-qc.png">
                </div>
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
                        <div class="col-xl-12 bd-top-gray p-0">

                        </div>

                        <div class="col-xl-12 mt-3 p-0">
                            @if($curentLesson['trial'] == 1)
                                <iframe class="iframe" height="450" src="https://www.youtube.com/embed/{{getYoutubeId($curentLesson['youtube'])}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            @else
                            <link href="https://vjs.zencdn.net/6.6.3/video-js.css" rel="stylesheet">

                            <script src="https://vjs.zencdn.net/6.6.3/video.js"></script>
                            <script src="https://cdn.streamroot.io/videojs-hlsjs-plugin/1/stable/videojs-hlsjs-plugin.js"></script>
                            <script src="/videojs-quality-picker/dist/vjs-quality-picker.js"></script>

                            <video id="my-video" class="video-js w-100" controls preload="auto" width="950" height="445" autoplay>
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
                            <div class="description-body-content-lesson">
                                {!! $curentLesson['content'] !!}
                            </div>
                            <div class="form-group text-center mt-5">
                                <button type="button" class="btn transition btn-test">Làm bài Test</button>
                            </div>
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
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment"></div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Hoanhbc <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thi thử trên wep có mất phí k ạ</div>
                                                    </div>
                                                </div>
                                                <div class="children-item">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                                <div class="reply-comment">
                                                    <a href="#"><i class="fa fa-comment"></i>
                                                    trả lời</a>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane container fade" id="facebook"></div>
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
    $('.cat-item a').click(function(){
    $(this).parent().toggleClass('opened');
})

</script>
@endpush


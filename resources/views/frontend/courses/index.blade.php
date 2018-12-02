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
                        <li class="breadcrumb-item active" aria-current="page"><a href="/khoa-hoc">Các khóa học</a></li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <section class="lesson-box">
        <div class="container">
            <div class="row">
                <div class="col-xl-3">
                    <a class="btn transition btn-danger w-100 p-3 mb-3" href="/thanh-toan/{{$course['id']}}-{{$course['slug']}}"><b>Mua khóa học này</b></a>
                    <a class="btn transition p-2 mb-3 btn-outline-danger w-100" href="/khoa-hoc">Xem thêm các khóa học khác <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                    </a>
                    @if($lessons)
                    <div class="title-slidebar">Tiến trình học</div>
                    <div class="section-sb-current">
                        <ul class="section-sb-list">
                        @foreach($lessons as $index => $lesson)
                            @php $index ++ @endphp
                            <li class="cat-item {{ $index == 1 ? 'opened' : '' }} {{ (count($lesson['children']) > 0) ? 'has_child' : '' }}">
                                <a href="javascript:void(0)">{{$lesson['name']}}</a>
                                @if(count($lesson['children']) > 0)
                                <ul class="children">
                                    @foreach($lesson['children'] as $child)
                                    <li><a href="/khoa-hoc/{{$course['slug']}}/{{$course['id']}}-{{$child['id']}}-{{$child['slug']}}">{{$child['name']}}

                                    @if($child['trial'] == 1)
                                    <span class="free">Học thử</span>
                                    @else
                                    <i class="fa fa-lock pull-right"></i>
                                    @endif
                                </a></li>
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
                    <h2 class='w-100 text-uppercase font24 left-title-lesson'>Khóa học {{$course['name']}}</h2>

                    <div class="alert alert-primary ">Giới thiệu lộ trình học</div>

                    <div class="body-content-lesson">
                        <div class="row">
                            <div class="col-xl-12 p-0">
                                <iframe class="iframe" height="450" src="https://www.youtube.com/embed/{{getYoutubeId($course['youtube'])}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                                <div class="description-body-content-lesson">
                                    {!!$course['info']!!}
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
                                                @if(Auth::check())
                                                <div class="item-body-comment">
                                                    <div class="parent-itemt">
                                                    <div class="avartar-item-comment"></div>
                                                        <div class="text-item-comment">
                                                            <div class="row">
                                                                <div class="col-md-9">
                                                                    <textarea class="w-100"></textarea>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <input class="btn w-100 btn-warning" value="Đăng" />
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endif


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
                                                    <div class="reply-comment">
                                                        <a href="#"><i class="fa fa-comments"></i>
                                                        1 phản hồi</a>
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

                                                    <div class="children-item">
                                                        <div class="avartar-item-comment">
                                                            <img src="/images/img-avatar-1.png">
                                                        </div>
                                                        <div class="text-item-comment">
                                                            <div class="row">
                                                                <div class="col-md-9">
                                                                    <textarea class="w-100"></textarea>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <input class="btn w-100 btn-warning" value="Đăng" />
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            @if($others)
                                            <div class="other-classroom">
                                                <div class="title-other"><span>Khóa học khác</span></div>
                                                <div class="body-other-classroom">
                                                    <div class="row">
                                                    @foreach($others as $other)
                                                        <div class="col-xl-12 mb-3 item-class">
                                                            <div class="thumbnail-tab-class">
                                                                <img class="w-100" src="{{ Storage::url($other['image']) }}" />
                                                                <div class="info-class-position">
                                                                    <div class="h3">{{$other['name']}}</div>
                                                                    <p>{{$other['time']}} tháng</p>
                                                                </div>
                                                            </div>
                                                            <div class="body-item-class">
                                                                <div class="title-body-item-class">
                                                                {{$other['name']}} - {{$other['title']}}
                                                                    <span class="tuition">học phí: <b>{{priceFormat($course['price'])}}</b></span>
                                                                </div>
                                                                <div class="content-item-class">
                                                                    <div class="info-item-class">
                                                                        <div class="duration">L</div>
                                                                        Thời gian học: {{$other['time']}} tháng
                                                                    </div>
                                                                    <div class="info-item-class">
                                                                        <div class="number-video"></div>
                                                                        Số video: {{$other['video_number']}}
                                                                    </div>
                                                                    <div class="group-btn-item-class">
                                                                        <a href="/khoa-hoc/{{$other['id']}}-{{$other['slug']}}" class="btn transition btn-more mr-2">CHI TIẾT</a>
                                                                        <a href="/thanh-toan/{{$other['id']}}-{{$other['slug']}}" class="btn transition btn-buy">MUA KHÓA HỌC</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            @endif
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
@push('scripts')
<script>
    $('.cat-item a').click(function(){
    $(this).parent().toggleClass('opened');
})

</script>
@endpush


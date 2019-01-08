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
                        <div class="col-xl-12 bd-top-gray p-0">

                        </div>

                        <div class="d-flex no-login mt-3 bg-light justify-content-center w-100  align-items-center">
                            <div class="p-2 bd-highlight">
                                <h4>
                                <i class="fa fa-asterisk" aria-hidden="true"></i>
                                Bạn chưa mua khóa học này
                                </h4>
                                <div class="mt-3 text-center">
                                   <a class="btn btn-danger mx-auto" href="/thanh-toan/{{$course['id']}}-{{$course['slug']}}"><i class="fa fa-cart-plus" aria-hidden="true"></i> Mua khóa học này</a>
                                </div>

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
    $('.cat-item a').click(function(){
    $(this).parent().toggleClass('opened');
})

</script>
@endpush


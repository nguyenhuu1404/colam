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
                    <li class="breadcrumb-item active" aria-current="page">Khoa hoc cua toi</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<section class="lesson-box">
	<div class="container">
        <div class="row">
            <div class="col-md-8 col-12">
            @if($courses)
                @foreach($courses as $course)
                <div class="d-flex bd-highlight bg-light align-items-center mb-3">
                    <div class="p-0 w-25 text-center bd-highlight">
                        <div class="combo-name-container pt-5 pb-5 bg-warning">
                            <p>KHÓA</p>
                            <h1>{{$course['name']}}</h1>
                        </div>
                    </div>
                    <div class="p-0 w-50 bd-highlight">
                        <div class="content-item-class">

                            <div class="info-item-class">
                                <i><img src="/images/icon-hours.png" alt="icon"></i>&nbsp;
                                Thời hạn: {{$course['time']}} tháng
                            </div>
                            <div class="info-item-class">
                                <i><img src="/images/icon-video.png" alt="icon"></i>&nbsp;
                                Video: {{$course['video_number']}}
                            </div>
                            <div class="info-item-class">
                                <i><img src="/images/icon-3code.png" alt="icon"></i>&nbsp;
                                Mã số: {{$course['code']}}
                            </div>
                            <div class="info-item-class">
                                <i><img src="/images/icon-file.png" alt="icon"></i>&nbsp;
                                Bài test: {{$course['test_number']}}
                            </div>
                        </div>
                    </div>
                    <div class="ml-auto p-0 bd-highlight">
                        <a class="btn btn-warning mr-3" href="/khoa-hoc/{{$package['id']}}-{{$course['id']}}-{{$course['slug']}}" target="_blank">
                            <div class="dmr-btn">Xem chi tiết</div>
                        </a>
                    </div>
                </div>
                @endforeach
            @endif

            </div>
            <div class="col-md-4 col-12">
                <div class="text-center">
                    <div class="btn btn-primary w-100 mb-4"><h4>Thông tin khóa học</h4></div>
                    <h2 class="mb-3 text-danger">{{ priceFormat($package['price_sale']) }} vnđ</h2>
                    <a class="btn btn-danger mb-4" href="/thanh-toan/{{$package['id']}}-{{$package['slug']}}"><b>Mua ngay</b></a>
                    <a class="btn p-2 mb-3 btn-outline-danger w-100" href="/khoa-hoc">Xem thêm các khóa học khác <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>

@endsection

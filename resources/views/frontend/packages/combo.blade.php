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

                <div class="combo-item">
                    <div class="combo-name-container">
                        <p>KHÓA</p>
                        <h1>N5</h1>
                    </div>
                    <div class="combo-detail-container">
                        <div class="course-info">Thời gian <span>15 tháng</span></div>
                        <div class="course-info">Số videos  <span>140 videos</span></div>
                        <div class="course-info">Số bài học <span>25</span></div>
                        <a href="http://dungmori.com/khoa-hoc/khoa-N5" target="_blank">
                            <div class="dmr-btn">Xem chi tiết</div>
                        </a>
                    </div>
                </div>

            </div>
            <div class="col-md-4 col-12">
            </div>
        </div>
    </div>
</section>

@endsection

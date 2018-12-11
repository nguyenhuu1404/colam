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
                        <li class="breadcrumb-item active" aria-current="page"><a href="/khoa-hoc">Khóa học của tôi</a></li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
			<section class="lesson-box">
				<div class="container">
                @if($myPackages)
					<h1 class="text-center text-uppercase sfd mt-4 mb-5 font30" >Khóa học của tôi</h1>
					<div class="row">
                        @if(isset($myPackages['courses']))
                        @foreach($myPackages['courses'] as $course)
						<div class="col-sm-6 col-xl-4 item-class mb-5">
							<div class="thumbnail-tab-class">
								<a href="/khoa-hoc/{{$course['id']}}-{{$course['slug']}}"><img class="w-100" src="{{ Storage::url($course['image']) }}"/></a>
								<div class="info-class-position">
									<div class="h3">{{$course['name']}}</div>
									<p>{{$course['time']}} tháng</p>
								</div>
							</div>
							<div class="body-item-class">
								<div class="title-body-item-class">
                                {{$course['name']}} - {{$course['title']}}
									<span class="tuition">học phí: <b>{{priceFormat($course['price'])}}</b></span>
								</div>
								<div class="content-item-class">
									<div class="info-item-class">
										<div class="duration">L</div>
										Thời gian học: {{$course['time']}} tháng
									</div>
									<div class="info-item-class">
										<div class="number-video"></div>
										Số video: {{$course['video_number']}}
									</div>
                                    <?php
                                        $end_date = $course['end_date'];
                                        $day = (strtotime($end_date) - time()) / (60 * 60 * 24);
                                        $day = ceil($day);
                                    ?>
                                    @if($day > 0)
									<div class="text-center w-100" style="margin-top: 30px;">
										<div class="btn transition btn-my-lesson btn-khoahoc-conlai">
											<img src="images/icon-clock-hour.png" class="mr-3"><span>Còn lại: <b>{{$day}} ngày</b></span>
										</div>
									</div>
                                    @else
                                    <div class="group-btn-item-class">
										<a href="/gia-han/{{$course['id']}}-{{$course['slug']}}" class="btn transition btn-my-lesson btn-buy m-auto">GIA HẠN</a>
									</div>
                                    @endif
								</div>
							</div>
						</div>
                        @endforeach
                        @endif

                        @if(isset($myPackages['packages']))
                        @foreach($myPackages['packages'] as $course)
						<div class="col-sm-6 col-xl-4 item-class mb-5">
							<div class="thumbnail-tab-class">
								<a href="/khoa-hoc/package/{{$course['id']}}-{{$course['slug']}}"><img class="w-100" src="{{ Storage::url($course['image']) }}"/></a>
								<div class="info-class-position">
									<div class="h3">{{$course['name']}}</div>
									<p>{{$course['time']}} tháng</p>
								</div>
							</div>
							<div class="body-item-class">
								<div class="title-body-item-class">
                                {{$course['name']}} - {{$course['title']}}
									<span class="tuition">học phí: <b>{{priceFormat($course['price'])}}</b></span>
								</div>
								<div class="content-item-class">
									<div class="info-item-class">
										<div class="duration">L</div>
										Thời gian học: {{$course['time']}} tháng
									</div>
									<div class="info-item-class">
										<div class="number-video"></div>
										Số video: {{$course['video_number']}}
									</div>
                                    <?php
                                        $end_date = $course['end_date'];
                                        $day = (strtotime($end_date) - time()) / (60 * 60 * 24);
                                        $day = ceil($day);
                                    ?>
                                    @if($day > 0)
									<div class="text-center w-100" style="margin-top: 30px;">
										<div class="btn transition btn-my-lesson btn-khoahoc-conlai">
											<img src="images/icon-clock-hour.png" class="mr-3"><span>Còn lại: <b>{{$day}} ngày</b></span>
										</div>
									</div>
                                    @else
                                    <div class="group-btn-item-class">
										<a href="/gia-han/package/{{$course['id']}}-{{$course['slug']}}" class="btn transition btn-my-lesson btn-buy m-auto">GIA HẠN</a>
									</div>
                                    @endif
								</div>
							</div>
						</div>
                        @endforeach
                        @endif

					</div>
                @else
                    <div class="alert alert-warning">Bạn chưa mua khóa học nào!</div>
                @endif
				</div>
			</section>

@endsection

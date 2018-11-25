@extends('frontend.layouts.master')

@section('content')
    @isset($banners)
        <section class="banner">
            @foreach ($banners as $banner)
                <div>
                    <img src="{{ Storage::url($banner['image']) }}">
                    <div class="title-description">
                        <div class="container">
                            <h2 class="title-slider">{{ $banner['title'] }}</h2>
                            <a href="" class="btn-slider ml-3">{{ $banner['text_button']}}</a>
                        </div>
                    </div>
                </div>
            @endforeach

        </section>
    @endisset
        @isset($recomand)
        @php
        $sale = false;
        if(isset($recomand['price_sale'])){
            $sale = floor(($recomand['price_sale'] * 100) / $recomand['price']);
        }

        @endphp
			<section class="combo-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 col-lg-7 d-flex">
							<div class="thumbnail-img">
								<img src="{{ Storage::url($recomand['image']) }}" alt="">
							</div>
							<div class="content-combo">
								<h4 class="title-combo">{{$recomand['name']}}</h4>
								@isset($sale)
                                <span class="sale-combo">SALE {{100-$sale}}%</span>
								@endisset
                                <div class="info-combo">
									<div class="item-info-combo">
										<i><img src="/images/icon-hours.png" alt="icon"></i>
										Thời hạn: {{$recomand['time']}} tháng
									</div>
									<div class="item-info-combo">
										<i><img src="/images/icon-video.png" alt="icon"></i>
										Video: {{$recomand['video_number']}}
									</div>
									<div class="item-info-combo">
										<i><img src="/images/icon-3code.png" alt="icon"></i>
										Mã số: {{$recomand['code']}}
									</div>
									<div class="item-info-combo">
										<i><img src="/images/icon-file.png" alt="icon"></i>
										Bài test: {{$recomand['test_number']}}
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-5 col-lg-5">
							<div class="price-combo">
                                @if($recomand['price'] > 0)
								<div class="sale-price-combo">{{ number_format($recomand['price'], 0, ',', '.') }} vnđ</div>
                                @endif
                                @if($recomand['price_sale'] > 0)
								<p class="text-only-price-combo">chỉ còn</p>
								<div class="after-salce-price-combo">{{ number_format($recomand['price_sale'], 0, ',', '.') }} vnđ</div>
                                @endif

                                @if($recomand['type'] == 'combo')
								<div class="group-btn-combo">
									<a href="/khoa-hoc/combo/{{ $recomand['id'] }}-{{ $recomand['slug'] }}" class="btn btn-more mr-3">XEM CHI TIẾT</a>
									<a href="/thanh-toan/{{ $recomand['id'] }}-{{ $recomand['slug'] }}" class="btn btn-buy">MUA KHÓA HỌC</a>
								</div>
                                @else
                                @php

                                @endphp
                                <div class="group-btn-combo">
									<a href="/khoa-hoc/{{ $recomand['course_id'] }}-{{ $recomand['course_slug'] }}" class="btn btn-more mr-3">XEM CHI TIẾT</a>
									<a href="/thanh-toan/{{ $recomand['id'] }}-{{ $recomand['slug'] }}" class="btn btn-buy">MUA KHÓA HỌC</a>
								</div>
                                @endif
							</div>
						</div>
					</div>
				</div>
			</section>
        @endisset
            @php
                $href = str_replace('\\', '/', setting('gioi-thieu.background_img'));
                $link_youtube = setting('gioi-thieu.youtube');
                $youtubeId = substr($link_youtube, strrpos($link_youtube, '=') + 1);
            @endphp
            <style>
                .introduce {
                    background-image: url( "/storage/{{ $href }}") !important;
                    background-color: "#{{ setting('gioi-thieu.background_color') }}" !important;
                }
            </style>
			<section class="introduce">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-4">
							<div class="title-introduce">
								{{ setting('gioi-thieu.title') }}
							</div>
							<div class="h2">
                                {{ setting('gioi-thieu.name') }}
							</div>
							<p>
                            {{ setting('gioi-thieu.description') }}
                            </p>
							<a href="{{ setting('gioi-thieu.href') }}" class="btn-classroom mt-5">{{ setting('gioi-thieu.button') }}</a>
						</div>
						<div class="col-xl-9 col-lg-8">
							<iframe class="iframe" height="450" src="https://www.youtube.com/embed/{{$youtubeId}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</section>
			<section class="courses-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="title-course">
								<p>Các khóa học online hiện có trên</p>
								<div class="h4">TIẾNG NHẬT CÔ LAM</div>
								<div class="checkbox-courses">
									<label>
										<input type="checkbox" data-toggle="toggle">
										<div class="toogle-left-right"></div>
										<div class="package-toggle">Gói lẻ</div>
										<div class="combo-toggle">Combo</div>
									</label>
								</div>
							</div>
							<div class="class-box">
								<ul class="nav nav-tabs d-flex justify-content-center" id="myTab" role="tablist">
									<li class="nav-item">
										<a class="nav-link" id="n3-tab" data-toggle="tab" href="#n3" role="tab" aria-controls="n3" aria-selected="false">N3</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="n4-tab" data-toggle="tab" href="#n4" role="tab" aria-controls="n4" aria-selected="false">N4</a>
									</li>
									<li class="nav-item">
										<a class="nav-link active" id="n5-tab" data-toggle="tab" href="#n5" role="tab" aria-controls="n5" aria-selected="true">N5</a>
									</li>
								</ul>
								<div class="tab-content" id="myTabContent">
									<div class="tab-pane fade" id="n3" role="tabpanel" aria-labelledby="home-tab">...</div>
									<div class="tab-pane fade" id="n4" role="tabpanel" aria-labelledby="profile-tab">...</div>
									<div class="tab-pane fade show active" id="n5" role="tabpanel" aria-labelledby="contact-tab">
										<div class="row slick-class">
											<div class="col-xl-4 item-class">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-4 item-class yellow">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-4 item-class">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5a + N5b</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-4 item-class">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-4 item-class yellow">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-4 item-class">
												<div class="thumbnail-tab-class">
													<img src="/images/img-class.png">
													<div class="info-class-position">
														<div class="h3">N5</div>
														<p>4 tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
														N5 - Khóa học dành cho sinh viên du học
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: 4 tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: 123
														</div>
														<div class="group-btn-item-class">
															<a href="" class="btn btn-more mr-2">CHI TIẾT</a>
															<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
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
			<section class="try-it">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="header-try">
								<div class="title-try-it">
									HỌC THỬ
									<span>Tiếng nhật cô lam</span>
								</div>
								<div class="cate-try-it">
									Phân loại:
									<select>
										<option>Ngữ pháp</option>
									</select>
								</div>
							</div>
							<div class="body-try">
								<div class="row">
									<div class="col-xl-6 left-try-it">
                                        @foreach($tryLessons as $tryLesson)
                                        <a href="">
										<div class="item-try-it">
											<div class="thumbnail-tryit">
												<img src="/images/img-try-it.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N6</div>
												<p class="tilte-post">{{$tryLesson['name']}}</p>
												<div class="code-id">Mã số: ss</div>
											</div>
										</div>
                                        </a>
										@endforeach

									</div>
									<div class="col-xl-6 right-try-it">
										<div class="video-tryit">
											<div class="star-video">
												<i class="fa fa-star"></i>
												N5
											</div>
											<div class="content-video-tryit">
												<img src="/images/video.png">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="course-payment">
				<div class="container">
					<div class="row">
						<div class="col-xl-12 d-flex align-items-center">
							<img src="/images/icon-payment.png">
							<div class="text-course-payment">
								<div class="h4">Các phương thức thanh toán khóa học</div>
								<p>Contact us now and we will make your event unique & unforgettable</p>
							</div>
							<a href="#" class="btn btn-more more-payment">XEM CHI TIẾT</a>
						</div>
					</div>
				</div>
			</section>
			<section class="user-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-12 slick-user-info">
							<div>
								<div class="description-user-info">
									Tôi biết đến Tiếng Nhật Cô Lam qua một người bạn. Khi ấy trình độ tiếng Nhật của tôi giống như một tờ giấy trắng. Tôi không tự tin giao tiếp với người nước ngoài do vốn tiếng Nhật còn nhiều hạn chế,
								</div>
								<div class="user-avarta-name">
									<img src="/images/img-avatar.png">
									<div class="h4">Nguyễn Trường Giang</div>
									<p>Du học sinh tại Tokyo</p>
								</div>
							</div>
							<div>
								<div class="description-user-info">
									Tôi biết đến Tiếng Nhật Cô Lam qua một người bạn. Khi ấy trình độ tiếng Nhật của tôi giống như một tờ giấy trắng. Tôi không tự tin giao tiếp với người nước ngoài do vốn tiếng Nhật còn nhiều hạn chế,
								</div>
								<div class="user-avarta-name">
									<img src="/images/img-avatar.png">
									<div class="h4">Nguyễn Trường Giang</div>
									<p>Du học sinh tại Tokyo</p>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="register-user">
								<div class="h3">ĐĂNG KÝ THÀNH VIÊN</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Email">
								</div>
								<div class="form-group text-center pt-3">
									<button class="btn btn-more">ĐĂNG KÝ</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="comment-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 text-right">
							<img src="/images/img-iu.png">
						</div>
						<div class="col-xl-6">
							<div class="title-comment">FANPAGE</div>
							<div class="h3 tiengnhatcolam mb-5">TIENGNHATCOLAM</div>

							<div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="100%" data-numposts="5"></div>
						</div>
					</div>
				</div>
			</section>
@endsection

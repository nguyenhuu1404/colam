@extends('frontend.layouts.master')

@section('content')
<section class="banner">
				<div>
					<img src="images/slider-1.jpg">
					<div class="title-description">
						<div class="container">
							<h2 class="title-slider">HỌC TIẾNG NHẬT</h2>
							<a href="" class="btn-slider ml-3">chưa bao giờ dễ đến thế</a>
						</div>
					</div>
				</div>
				<div>
					<img src="images/slider-1.jpg">
					<div class="title-description">
						<div class="container">
							<h2 class="title-slider">HỌC TIẾNG NHẬT</h2>
							<a href="" class="btn-slider ml-3">chưa bao giờ dễ đến thế</a>
						</div>
					</div>
				</div>
				<div>
					<img src="images/slider-1.jpg">
					<div class="title-description">
						<div class="container">
							<h2 class="title-slider">HỌC TIẾNG NHẬT</h2>
							<a href="" class="btn-slider ml-3">chưa bao giờ dễ đến thế</a>
						</div>
					</div>
				</div>
			</section>
			<section class="combo-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 col-lg-7 d-flex">
							<div class="thumbnail-img">
								<img src="images/img-thumbnail-1.png" alt="">
							</div>
							<div class="content-combo">
								<h4 class="title-combo">COMBO N4 + N5</h4>
								<span class="sale-combo">SALE 30%</span>
								<div class="info-combo">
									<div class="item-info-combo">
										<i><img src="images/icon-hours.png" alt="icon"></i>
										Thời hạn: 10 tháng
									</div>
									<div class="item-info-combo">
										<i><img src="images/icon-video.png" alt="icon"></i>
										Video: 150
									</div>
									<div class="item-info-combo">
										<i><img src="images/icon-3code.png" alt="icon"></i>
										Mã số: CL45N
									</div>
									<div class="item-info-combo">
										<i><img src="images/icon-file.png" alt="icon"></i>
										Bài test: 50
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-5 col-lg-5">
							<div class="price-combo">
								<div class="sale-price-combo">890.000 vnđ</div>
								<p class="text-only-price-combo">chỉ còn</p>
								<div class="after-salce-price-combo">600.000 vnđ</div>
								<div class="group-btn-combo">
									<a href="" class="btn btn-more mr-3">XEM CHI TIẾT</a>
									<a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="introduce">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-4">
							<div class="title-introduce">
								HỌC TIẾNG NHẬT ONLINE
							</div>
							<div class="h2">
								GIỚI THIỆU
							</div>
							<p>Lorem ipsum dollor site amet the best  consectuer adipiscing elites sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat insignia the consectuer adipiscing elit. </p>
							<a href="#" class="btn-classroom mt-5">LỘ TRÌNH HỌC</a>
						</div>
						<div class="col-xl-9 col-lg-8">
							<iframe class="iframe" height="450" src="https://www.youtube.com/embed/yU6BSPNnuWA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
													<img src="images/img-class.png">
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
													<img src="images/img-class.png">
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
													<img src="images/img-class.png">
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
													<img src="images/img-class.png">
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
													<img src="images/img-class.png">
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
													<img src="images/img-class.png">
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
										<div class="item-try-it active">
											<div class="thumbnail-tryit">
												<img src="images/img-try-it.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N6</div>
												<p class="tilte-post">Tiếng Nhật cho người đi làm</p>
												<div class="code-id">Mã số: CL45N</div>
											</div>
										</div>
										<div class="item-try-it">
											<div class="thumbnail-tryit">
												<img src="images/img-try-it-2.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N2</div>
												<p class="tilte-post">Tiếng Nhật qua bài hát</p>
												<div class="code-id">Mã số: CL45N</div>
											</div>
										</div>
										<div class="item-try-it">
											<div class="thumbnail-tryit">
												<img src="images/img-try-it-3.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N3</div>
												<p class="tilte-post">Tiếng Nhật giao tiếp</p>
												<div class="code-id">Mã số: CL45N</div>
											</div>
										</div>
										<div class="item-try-it">
											<div class="thumbnail-tryit">
												<img src="images/img-try-it.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N6</div>
												<p class="tilte-post">Tiếng Nhật cho người đi làm</p>
												<div class="code-id">Mã số: CL45N</div>
											</div>
										</div>
										<div class="item-try-it">
											<div class="thumbnail-tryit">
												<img src="images/img-try-it.png">
											</div>
											<div class="content-try-it">
												<div class="h4">N6</div>
												<p class="tilte-post">Tiếng Nhật cho người đi làm</p>
												<div class="code-id">Mã số: CL45N</div>
											</div>
										</div>

									</div>
									<div class="col-xl-6 right-try-it">
										<div class="video-tryit">
											<div class="star-video">
												<i class="fa fa-star"></i>
												N5
											</div>
											<div class="content-video-tryit">
												<img src="images/video.png">
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
							<img src="images/icon-payment.png">
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
									<img src="images/img-avatar.png">
									<div class="h4">Nguyễn Trường Giang</div>
									<p>Du học sinh tại Tokyo</p>
								</div>
							</div>
							<div>
								<div class="description-user-info">
									Tôi biết đến Tiếng Nhật Cô Lam qua một người bạn. Khi ấy trình độ tiếng Nhật của tôi giống như một tờ giấy trắng. Tôi không tự tin giao tiếp với người nước ngoài do vốn tiếng Nhật còn nhiều hạn chế,
								</div>
								<div class="user-avarta-name">
									<img src="images/img-avatar.png">
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
							<img src="images/img-iu.png">
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

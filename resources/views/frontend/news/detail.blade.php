@extends('frontend.layouts.master')

@section('content')

<section class="banner news">
				<div>
					<div class="title-description">
						<div class="container">
							<h2 class="title-slider">Học tiếng Nhật online</h2>
							<div class="ui breadcrumb">
							    <p id="breadcrumbs"><span xmlns:v="http://rdf.data-vocabulary.org/#"><span typeof="v:Breadcrumb"><a href="/" rel="v:url" property="v:title">Trang chủ</a> > <span rel="v:child" typeof="v:Breadcrumb"><a href="/tin-tuc/" rel="v:url" property="v:title">Tin tức</a><span rel="v:child" typeof="v:Breadcrumb"></p>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="w-100 main-news">
				<div class="container">
					<div class="">
						<div class="col-md-9 pull-right">
							<h1 class="tit-page">{!! $post['title'] !!}</h1>							
							<hr>
							<div class="wr-content">
								{!! $post['body'] !!}
								<div class="hotro-p">
									<div class="row">										
										<div class="hotro-img text-right col-md-2 align-midle d-none d-sm-block"><img src="/images/logo-footer.png" alt=""></div>
										<div class="hotro-p-content col-md-10 ">
											<a href="" class="font20 bold" style="color: #272727"> <i class="fa fa-mobile"></i> 0982735392</a>
											<p class="font13">Hãy gọi cho chúng tôi nếu bạn đang có vấn đề về da cần được giải đáp <br>
												Hoặc bấm <b>ĐĂNG KÝ TƯ VẤN</b> chúng tôi sẽ hỗ trợ ngay cho bạn <br>
												Hoặc gửi thư qua: <b>tuvan.tiengnhatcolam@gmail.com</b> nếu bạn muốn kể chi tiết hơn</p>
										</div>									
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							
							<div class="clearfix"></div>
							<?php $url = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']; ?>
							<div class="fb-comments" data-href="{{ $url }}" data-width="100%" data-numposts="5"></div>
							<div class="title-other"><span>Bài viết khác</span></div>
							<div class="clearfix" style="height: 30px;"></div>
							<!-- item-new -->	
							<div class="row loop-item news">
								<div class="col-md-5">
									<a href="">
										<img src="/images/new1.jpg">
									</a>
								</div>
								<div class="col-md-7">
									<div class="">
										<a href="">
											<p class="title">
												<strong>Thủ tướng: Nhà nước được gì khi bán nhà công sản cho Vũ Nhôm?</strong>
											</p>
										</a>
										<p>
											Ông Đào Minh Tú cho biết vẫn cung ứng đủ tiền lẻ cho thanh toán nhưng không ủng hộ dùng để giải quyết vấn đề của những dự án BOT.
										</p>
										<a href="" class="btn-readmore news transition">Xem chi tiết</a>
									</div>
								</div>
							</div>
							<!-- item-new -->	
							<!-- item-new -->	
							<div class="row loop-item news">
								<div class="col-md-5">
									<a href="">
										<img src="/images/new1.jpg">
									</a>
								</div>
								<div class="col-md-7">
									<div class="">
										<a href="">
											<p class="title">
												<strong>Thủ tướng: Nhà nước được gì khi bán nhà công sản cho Vũ Nhôm?</strong>
											</p>
										</a>
										<p>
											Ông Đào Minh Tú cho biết vẫn cung ứng đủ tiền lẻ cho thanh toán nhưng không ủng hộ dùng để giải quyết vấn đề của những dự án BOT.
										</p>
										<a href="" class="btn-readmore news transition">Xem chi tiết</a>
									</div>
								</div>
							</div>
							<!-- item-new -->
							<!-- item-new -->	
							<div class="row loop-item news">
								<div class="col-md-5">
									<a href="">
										<img src="/images/new1.jpg">
									</a>
								</div>
								<div class="col-md-7">
									<div class="">
										<a href="">
											<p class="title">
												<strong>Thủ tướng: Nhà nước được gì khi bán nhà công sản cho Vũ Nhôm?</strong>
											</p>
										</a>
										<p>
											Ông Đào Minh Tú cho biết vẫn cung ứng đủ tiền lẻ cho thanh toán nhưng không ủng hộ dùng để giải quyết vấn đề của những dự án BOT.
										</p>
										<a href="" class="btn-readmore news transition">Xem chi tiết</a>
									</div>
								</div>
							</div>
							<!-- item-new -->	
							<!-- item-new -->	
							<div class="row loop-item news">
								<div class="col-md-5">
									<a href="">
										<img src="/images/new1.jpg">
									</a>
								</div>
								<div class="col-md-7">
									<div class="">
										<a href="">
											<p class="title">
												<strong>Thủ tướng: Nhà nước được gì khi bán nhà công sản cho Vũ Nhôm?</strong>
											</p>
										</a>
										<p>
											Ông Đào Minh Tú cho biết vẫn cung ứng đủ tiền lẻ cho thanh toán nhưng không ủng hộ dùng để giải quyết vấn đề của những dự án BOT.
										</p>
										<a href="" class="btn-readmore news transition">Xem chi tiết</a>
									</div>
								</div>
							</div>
							<!-- item-new -->



							<div class="clearfix" style="height: 50px;"></div>
						</div>
						<div class="col-md-3 pull-left" id="sidebar">
							<ul class="menu-sidebar">
								<li>
									<a href="">Tin tức</a>
								</li>
								<li class="current">
									<a href="">Lộ trình hiệu quả</a>
								</li>
								<li>
									<a href="">Cảm nhận của học viên</a>
								</li>
								<li>
									<a href="">Hỏi đáp</a>
								</li>
							</ul>
							<div class="ads-sb mb-4">
								<a href="">
										<img src="/images/ads1.png">
									</a>
							</div>
							<div class="ads-sb mb-4">
								<a href="">
										<img src="/images/ads2.png">
									</a>
							</div>
						</div>
					</div>
				</div>
			</section>
@endsection

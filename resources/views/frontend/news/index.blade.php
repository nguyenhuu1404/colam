@extends('frontend.layouts.master')

@section('content')

<section class="banner news">
        <div class="title-description">
            <div class="container">
                <h2 class="title-slider">Học tiếng Nhật online</h2>
                <div class="ui breadcrumb">
                    <p id="breadcrumbs">
                        <a href="">Trang chủ</a> >
                        <a href="">Các khóa học</a>
                    </p>
                </div>
            </div>
        </div>
</section>

<section class="w-100 main-news">
				<div class="container">
					<div class="">
						<div class="col-md-9 pull-right">
                        @if($news)
                            @foreach($news as $new)
							<div class="row loop-item news">
								<div class="col-md-5">
									<a href="">
										<img src="{{ Storage::url($new['image']) }}">
									</a>
								</div>
								<div class="col-md-7">
									<div class="">
										<a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}" title="{{ $new['title'] }}">
											<h3 class="title h5">
												{{ $new['title'] }}
											</h3>
										</a>
										<p>
											{{ $new['excerpt'] }}
										</p>
										<a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}" class="btn-readmore news transition">Xem chi tiết</a>
									</div>
								</div>
							</div>
                            @endforeach
                        @endif


							<div class="clearfix" style="height: 20px;"></div>
							<div class="pagination">
							    <span aria-current="page" class="page-numbers current">1</span>
								<a class="page-numbers" href="#">2</a>
								<a class="page-numbers" href="#">3</a>
								<a class="page-numbers" href="#">4</a>
								<a class="page-numbers" href="#">5</a>
								<a class="next page-numbers" href="#">></a>
							</div>
							<div class="clearfix" style="height: 50px;"></div>
						</div>
						<div class="col-md-3 pull-left">
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
						</div>
					</div>
				</div>
			</section>
@endsection

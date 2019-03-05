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
                        <li class="breadcrumb-item active" aria-current="page"><a href="/tin-tuc">Tin tức</a></li>
                    </ol>
                </nav>
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
											<a href="" class="font20 bold" style="color: #272727"> <i class="fa fa-mobile"></i> {{ setting('site.hotline') }}</a>
											<p class="font13">Hãy gọi cho chúng tôi nếu bạn đang có vấn đề về da cần được giải đáp <br>
												Hoặc bấm <b>ĐĂNG KÝ TƯ VẤN</b> chúng tôi sẽ hỗ trợ ngay cho bạn <br>
												Hoặc gửi thư qua: <b>tuvan.tiengnhatcolam@gmail.com</b> nếu bạn muốn kể chi tiết hơn</p>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>

							<div class="clearfix"></div>
							<div class="fb-comments full" data-href="{{ url()->full() }}" data-width="100%" data-numposts="5"></div>
							@if (count($related) > 0)
							<div class="title-other"><span>Bài viết khác</span></div>
							<div class="clearfix" style="height: 30px;"></div>

							@foreach ($related as $new)
   							<!-- item-new -->
							<div class="row loop-item news">

								<div class="col-md-3">
									<a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}" title="{{ $new['title'] }}">
										<img src="{{ Storage::url( $new['image'] )}}">
									</a>
								</div>
								<div class="col-md-9">
									<div class="">
										<a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}" title="{{ $new['title'] }}">
											<p class="title">
												<strong>{{ $new['title'] }}</strong>
											</p>
										</a>
										<p>
											{{ $new['excerpt'] }}
										</p>
										<a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}" title="{{ $new['title'] }}" class="btn-readmore btn news transition">Xem chi tiết</a>
									</div>
								</div>

							</div>
							<!-- item-new -->
							@endforeach

							@endif
							<div class="clearfix" style="height: 50px;"></div>
						</div>
						<div class="col-md-3 pull-left" id="sidebar">
                        <ul class="menu-sidebar">
                            @foreach($categories as $list)
                            <?php $active=''; if($list['id'] === $curentCate){ $active = 'current'; } ?>
                            <li class="{{$active}}" >
                                <a href="/danh-muc/{{$list['id']}}-{{$list['slug']}}">{{ $list['name'] }}</a>
                            </li>
                            @endforeach
                        </ul>
                        @if($ads)
                            @foreach($ads as $ad)
							<div class="ads-sb mb-4">
								<a href="{{$ad['link']}}">
										<img src="{{ Storage::url( $ad['image'] )}}">
									</a>
							</div>
                            @endforeach
                        @endif

						</div>
					</div>
				</div>
			</section>

@endsection
@push('scripts')
<script>
$(document).ready(function () {
    $('.totop').click(function(){
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    })

});
</script>
@endpush

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


			<section id="package" class="courses-box">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="title-course">
								<p>Các khóa học online hiện có trên</p>
								<div class="h4">TIẾNG NHẬT CÔ LAM</div>
								<div class="checkbox-courses">
									<label class="p-0">
										<input type="checkbox" data-toggle="toggle">
										<div class="toogle-left-right"></div>
										<div v-on:click="getPackages();"  class="package-toggle">Gói lẻ</div>
										<div v-on:click="getPackages();"  class="combo-toggle">Combo</div>
									</label>
								</div>
							</div>
							<div v-if="packageType=='single'" class="class-box">
								<ul class="nav nav-tabs d-flex justify-content-center" id="myTab" role="tablist">
                                    @foreach($courseTypes as $courseType)
									<li class="nav-item">
										<a  class="nav-link text-uppercase {{ $courseType === 'n5' ? 'active' : '' }}" id="{{$courseType}}-tab" data-toggle="tab" href="#{{$courseType}}" role="tab" aria-controls="{{$courseType}}" aria-selected="false">{{$courseType}}</a>
									</li>
                                    @endforeach

								</ul>
								<div class="tab-content" id="myTabContent">

                                    @foreach($courseTypes as $courseType)

									<div  class="tab-pane fade show {{ $courseType === 'n5' ? 'active' : '' }}" id="{{$courseType}}" role="tabpanel" aria-labelledby="contact-tab">
										<div  class="owl-carousel owl-theme owl-3-items">
											<div v-for="(package, index) in packages.{{$courseType}}"  :class="{'yellow': (index+1) % 2 === 0, 'green': (index+1) % 2 !== 0 }" class="item-class">
												<div class="thumbnail-tab-class">
													<img :src="'/storage/'+package.image" />
													<div class="info-class-position">
														<div class="h3">@{{package.name}}</div>
														<p>@{{package.time}} tháng</p>
													</div>
												</div>
												<div class="body-item-class">
													<div class="title-body-item-class">
                                                    @{{package.name}} <span v-if="package.title">-</span> @{{package.title}}
														<span class="tuition">học phí: <b>990,000</b></span>
													</div>
													<div class="content-item-class">
														<div class="info-item-class">
															<div class="duration">L</div>
															Thời gian học: @{{package.time}} tháng
														</div>
														<div class="info-item-class">
															<div class="number-video"></div>
															Số video: @{{package.video_number}}
														</div>
														<div class="group-btn-item-class">
															<a v-bind:href="'/khoa-hoc/'+ package.id+'-'+package.slug" class="btn btn-more mr-2">CHI TIẾT</a>
															<a v-bind:href="'/thanh-toan/'+ package.id+'-'+package.slug" class="btn btn-buy">MUA KHÓA HỌC</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
                                    @endforeach
								</div>
							</div>

                            <div v-if="packageType=='combo'" class="class-box">
                                <div class="owl-carousel owl-theme owl-3-items">
                                    <div v-for="(package, index) in packages2" :class="{'yellow': (index+1) % 2 === 0, 'green': (index+1) % 2 !== 0 }" class="item-class">
                                        <div class="thumbnail-tab-class">
                                            <img :src="'/storage/'+package.image">
                                            <div class="info-class-position">
                                                <div class="h3">@{{package.name}}</div>
                                                <p>@{{package.time}} tháng</p>
                                            </div>
                                        </div>
                                        <div class="body-item-class">
                                            <div class="title-body-item-class">
                                            @{{package.name}} <span v-if="package.title">-</span> @{{package.title}}
                                                <span class="tuition">học phí: <b>990,000</b></span>
                                            </div>
                                            <div class="content-item-class">
                                                <div class="info-item-class">
                                                    <div class="duration">L</div>
                                                    Thời gian học: @{{package.time}} tháng
                                                </div>
                                                <div class="info-item-class">
                                                    <div class="number-video"></div>
                                                    Số video: @{{package.video_number}}
                                                </div>

                                                <div class="group-btn-item-class">
                                                    <a v-bind:href="'/khoa-hoc/combo/'+ package.id+'-'+package.slug" class="btn btn-more mr-2">CHI TIẾT</a>
                                                    <a v-bind:href="'/thanh-toan/'+ package.id+'-'+package.slug" class="btn btn-buy">MUA KHÓA HỌC</a>
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



            @if($trialLessons)
			<section class="try-it">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div-- class="header-try">
								<div class="title-try-it">
									HỌC THỬ
									<span>Tiếng nhật cô lam</span>
								</div>
								<!--div class="cate-try-it">
									Phân loại:
									<select>
										<option>Ngữ pháp</option>
									</select>
								</div-->
							</div>
							<div class="body-try w-100">
								<div class="row">
									<div class="col-xl-6 pointer left-try-it">
                                        @foreach($trialLessons as $indexKey => $trialLesson)
                                        <?php

                                             $link_youtube = $trialLesson['youtube'];
                                             $youtubeId = substr($link_youtube, strrpos($link_youtube, '=') + 1);
                                        ?>
										<div onclick="videoTrial(this, '<?= $youtubeId ?>')" class="item-try-it {{ ($indexKey == 0) ? 'active' : '' }}">
											<div class="thumbnail-tryit">
												<img src="{{ Storage::url($trialLesson['image']) }}">
                                            </div>

											<div class="content-try-it">
												<div class="h4">
                                                    <?php
                                                    $courses = $courseTrialLesson[$trialLesson['id']];
                                                    if(count($courses) > 0){
                                                        $courseName = [];
                                                        foreach($courses as $course){
                                                            $courseName[] = $course['name'];
                                                        }
                                                        echo implode(', ', $courseName);
                                                    }
                                                    ?>
                                                </div>
												<p class="tilte-post">{{$trialLesson['name']}}</p>
                                            </div>

										</div>
										@endforeach

									</div>
									<div class="col-xl-6 right-try-it">
										<div class="video-tryit">

                                        <iframe id="videoTrial" class="w-100" height="460px;" src="https://www.youtube.com/embed/{{ getYoutubeId($trialLessons[0]['youtube'])}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
										</div>
									</div>
								</div>
							</div>
						</div>
                    </div>
                </div>
				</div>
            </section>
            <script>
                function videoTrial(that, youtubeId){
                    $('#videoTrial').attr('src', 'https://www.youtube.com/embed/'+youtubeId);
                    $('.item-try-it').removeClass('active');
                    $(that).addClass('active');
                }
            </script>
            @endif
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

@section('styles')

<link rel="stylesheet" href="{{ asset('owl-carousel/assets/owl.carousel.min.css')}}"/>
<link rel="stylesheet" href="{{ asset('owl-carousel/assets/owl.theme.default.min.css')}}"/>

@stop

@push('scripts')

<script src="{{ asset('owl-carousel/owl.carousel.min.js')}}"></script>
<script>
$('.banner').slick({
    autoplay: true,
    autoplaySpeed: 5000
});


$('.slick-user-info').slick({
    dots: true,
    infinite: false,
    speed: 300,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: true,
});
</script>

<script type="text/javascript" src="{{ asset('js/vue.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/axios.min.js') }}"></script>

<script type="text/javascript">

    axios.defaults.headers.common = {
        'X-Requested-With': 'XMLHttpRequest'
    };
    var app = new Vue({
        el: '#package',
        data: {
            packages: {},
            packages2: [],
            packageType: 'single',
        },
        methods: {
            listPackages: function(){
                var packages = {!!$singlePackages!!};
                this.packages = packages;
            },
            getPackages: function(){
                if(this.packageType == 'single'){
                    this.packageType = 'combo';
                    var vm = this;
                    axios.post('{{ route('api.package.getPackages') }}', {
                        type: vm.packageType,
                    }).then(function (response) {
                        vm.packages2 = response && response.data;
                        vm2 = vm;
                        setTimeout(function() {
                            $(vm2.$el).find(".owl-3-items").owlCarousel({
                                nav:false,
                                loop:false,
                                dots: true,
                                margin:30,
                                responsive:{
                                    0:{
                                        items:1
                                    },
                                    768:{
                                        items:2
                                    },
                                    1024:{
                                        items:3
                                    }
                                }
                            });
                        }, 1000);


                    });
                }else{
                    this.packageType = 'single';
                    var vm = this;
                    axios.post('{{ route('api.package.getPackages') }}', {
                        type: vm.packageType,
                    }).then(function (response) {
                        vm.packages = response && response.data;
                        vm2 = vm;
                        setTimeout(function() {
                            $(vm2.$el).find(".owl-3-items").owlCarousel({
                                nav:false,
                                loop:false,
                                dots: true,
                                margin:30,
                                responsive:{
                                    0:{
                                        items:1
                                    },
                                    768:{
                                        items:2
                                    },
                                    1024:{
                                        items:3
                                    }
                                }
                            });
                        }, 1000);

                    });
                }


            },
            installOWLcarousel: function() {
                $(".owl-3-items").owlCarousel({
                    nav:false,
                    loop:false,
                    dots: true,
                    margin:30,
                    responsive:{
                        0:{
                            items:1
                        },
                        768:{
                            items:2
                        },
                        1024:{
                            items:3
                        }
                    }
                });
            }
        },
        mounted: function() {
            this.listPackages();
            var self = this;
            setTimeout(function() {
                self.installOWLcarousel();
            }, 0);
        }
    });


</script>
@endpush

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
                                <li class="breadcrumb-item active" aria-current="page">Khóa học</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </section>
            <section class="lesson-box py-5" style="background: #ebebeb;">
                <div class="container">
                    <h1 class="text-center text-uppercase sfd mb-5 font30">{{$title}}</h1>
                    <div class="row">
                        @if(isset($courses))
                            @foreach($courses as $key => $course)
                            <div class=" {{ $key % 2 !=0 ? 'yellow' : ''}} col-sm-6 col-xl-4 item-class mb-5">
                                <div class="thumbnail-tab-class">
                                    <img class="w-100" src="{{ Storage::url($course['image']) }}">
                                    <div class="info-class-position">
                                        <div class="h3">{{$course['name']}}</div>
                                        <p>{{$course['time']}} tháng</p>
                                    </div>
                                </div>
                                <div class="body-item-class">
                                    <div class="title-body-item-class">
                                    {{$course['name']}} @if($course['title']) - @endif {{$course['title']}}
                                    <span class="tuition fs18">học phí: <b>{{$course['price_sale'] ? priceFormat($course['price_sale']) : priceFormat($course['price'])}}</b>
                                    @if($course['price_sale'])
                                    <b class="sale-price">{{priceFormat($course['price'])}}</b>
                                    @endif
                                    </span>
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
                                        @if($course['lock'] == 1)
                                        <div class="group-btn-item-class">
                                            <button onclick="lockMessage()" class="btn transition btn-more mr-2">CHI TIẾT</button>
                                            <button onclick="lockMessage()" class="btn transition btn-buy">MUA KHÓA HỌC</button>
                                        </div>
                                        @else
                                        <div class="group-btn-item-class">
                                            <a href="/khoa-hoc/{{$course['id']}}-{{$course['slug']}}" class="btn transition btn-more mr-2">CHI TIẾT</a>
                                            <a href="/thanh-toan/{{$course['id']}}-{{$course['slug']}}" class="btn transition btn-buy">MUA KHÓA HỌC</a>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        @endif

                         @if(isset($comboPackages))
                            @foreach($comboPackages as $key => $package)
                            <div class=" {{ $key % 2 !=0 ? 'yellow' : ''}} col-sm-6 col-xl-4 item-class mb-5">
                                <div class="thumbnail-tab-class">
                                    <img class="w-100" src="{{ Storage::url($package['image']) }}">
                                    <div class="info-class-position">
                                        <div class="h3">{{$package['name']}}</div>
                                        <p>{{$package['time']}} tháng</p>
                                    </div>
                                </div>
                                <div class="body-item-class">
                                    <div class="title-body-item-class">
                                    {{$package['name']}} @if($package['title']) - @endif {{$package['title']}}
                                    <span class="tuition fs18">học phí: <b>{{$package['price_sale'] ? priceFormat($package['price_sale']) : priceFormat($package['price'])}}</b>
                                    @if($package['price_sale'])
                                    <b class="sale-price">{{priceFormat($package['price'])}}</b>
                                    @endif
                                    </span>
                                    </div>
                                    <div class="content-item-class">
                                        <div class="info-item-class">
                                            <div class="duration">L</div>
                                            Thời gian học: {{$package['time']}} tháng
                                        </div>
                                        <div class="info-item-class">
                                            <div class="number-video"></div>
                                            Số video: {{$package['video_number']}}
                                        </div>
                                        @if($package['lock'] == 1)
                                        <div class="group-btn-item-class">
                                            <button onclick="lockMessage()" class="btn transition btn-more mr-2">CHI TIẾT</button>
                                            <button onclick="lockMessage()" class="btn transition btn-buy">MUA KHÓA HỌC</button>
                                        </div>
                                        @else
                                        <div class="group-btn-item-class">
                                            <a href="/khoa-hoc/package/{{$package['id']}}-{{$package['slug']}}" class="btn transition btn-more mr-2">CHI TIẾT</a>
                                            <a href="/thanh-toan/package/{{$package['id']}}-{{$package['slug']}}" class="btn transition btn-buy">MUA KHÓA HỌC</a>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        @endif


                    </div>
                </div>
            </section>

@endsection

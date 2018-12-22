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
                        <li class="breadcrumb-item active" aria-current="page">{!! $page['title'] !!}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>

    <section class="w-100 main-news">
        <div class="container">
            <div class="">
                <div class="col-md-12 pull-right">
                    <h1 class="tit-page">{!! $page['title'] !!}</h1>
                    <hr>
                    <div class="wr-content">
                        {!! $page['body'] !!}
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

                    <div class="clearfix" style="height: 50px;"></div>

                </div>

            </div>
        </div>
    </section>
@endsection

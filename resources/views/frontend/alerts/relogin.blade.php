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

                    </ol>
                </nav>
            </div>
        </div>
    </section>
<div class="container">
    <div class="alert alert-danger mt-3">
        Tài khoản của bạn đã bị đăng nhập ở nơi khác! Nếu bạn chia sẽ tài khoản của mình cho người khác, hệ thống của chúng tôi sẽ tự động khóa tài khoản của bạn!
    </div>
</div>

@endsection

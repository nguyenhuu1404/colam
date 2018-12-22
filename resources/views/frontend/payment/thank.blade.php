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
                        <li class="breadcrumb-item active" aria-current="page">Thanh toán thành công</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
	<section class="contact-box my-5 w-100">
		<div class="container">
			<div class="alert alert-success">{!!$message!!}</div>
		</div>
	</section>

@endsection


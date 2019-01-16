@extends('frontend.layouts.master')

@section('content')
  <section class="banner">
        <img src="images/banner-lesson.png">
        <div class="breadcrumb-position">
            <div class="container">
                <div class="title-breadcrumb">Học tiếng Nhật online</div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Câu hỏi thường gặp</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
	<section class="contact-box my-5 w-100">
		<div class="container">
				<h1 class="text-center text-uppercase sfd mb-5 font30">Câu hỏi thường gặp</h1>
                <div class="clear"></div>
            @if($data)
                <div class="row">
                    <div class="col-md-8 mx-auto " id="faqs">

                        @foreach($data as $key=>$post)

                          <div class="card mb-1">
                            <div class="card-header" id="heading-{{$key}}">
                              <h5 class="mb-0">
                                <span aria-expanded="{{ $key < 1 ? 'true' : 'false' }}" class=" sfd text-uppercase" style="cursor: pointer;" data-toggle="collapse" data-target="#collapse-{{$key}}" aria-controls="collapse-{{$key}}">
                                  {!!$post['question']!!}
                                </span>
                              </h5>
                            </div>

                            <div id="collapse-{{$key}}" class="collapse {{ $key < 1 ? 'show' : '' }}" aria-labelledby="heading-{{$key}}" data-parent="#faqs">
                              <div class="card-body">
                                {!! $post['answer'] !!}
                              </div>
                            </div>
                          </div>

                      @endforeach
                    </div>
               </div>
            @endif

		</div>
	</section>

@endsection





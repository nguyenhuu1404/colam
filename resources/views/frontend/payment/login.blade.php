@extends('frontend.layouts.master')

@section('content')

<section class="banner">
        <img src="/images/banner-lesson.png">
        <div class="breadcrumb-position">
            <div class="container">
                <div class="title-breadcrumb">Học tiếng Nhật online</div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Thanh toan</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <section class="contact-box SFD mb-5 w-100">
        <div class="container">
            <div class="main">
              <h1 class=" text-uppercase sfd mt-5 font30">Thanh toán</h1>
               <div class="main-center main-payment" style="opacity: 1;">
                  <div class="row">
                     <div class="col-sm-8 col-md-9 ">
                        <div class="step-1-container bg_f8f8f8 pb-4 my-4 ">

                           <div class="d-flex no-login mt-3 bg-light justify-content-center w-100  align-items-center">
                                <div class="p-2 bd-highlight">
                                    <h4>
                                    <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    Bạn cần đăng nhập hoặc tạo tài khoản để mua
                                    </h4>
                                    <div class="mt-3 text-center">
                                        <button type="button" data-toggle="modal" data-target="#login" class="btn-warning pointer mx-auto btn transition">
                                            <i class="fa fa-user mg4" aria-hidden="true"></i>
                                            Đăng nhập
                                        </button>
                                        <button type="button" data-toggle="modal" data-target="#signup" class="btn-warning pointer mx-auto btn transition">
                                            <i class="fa fa-user mg4" aria-hidden="true"></i>
                                            Đăng kí
                                        </button>
                                    </div>

                                </div>
                            </div>


                        </div>

                     </div>
                     <div class="col-sm-4 col-md-3">
                        <div class="payment-info-container bg_f8f8f8 my-4 pb-4">
                           <div class="payment-heading"><span>Thông tin đơn hàng</span></div>
                           <div class="payment-sb">
                              <div class="title-body-item-class">
                              {{$course['name']}}
                                  <span class="tuition">học phí: <b>{{ $course['price_sale'] ? priceFormat($course['price']) : priceFormat($course['price'])}} ₫</b></span>
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
                              </div>
                           </div>
                           <hr>
                           <h4 class="total-payment">Tổng tiền  <span>{{ $course['price_sale'] ? priceFormat($course['price']) : priceFormat($course['price'])}} ₫</span></h4>
                        </div>
                     </div>
                  </div>

               </div>
            </div>
        </div>
    </section>

@endsection



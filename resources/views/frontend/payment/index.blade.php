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
    <section class="contact-box SFD my-5 w-100">
        <div class="container">
            <h1 class="text-center text-uppercase sfd mt-4 mb-5 font30" >Chọn hình thức thanh toán phù hợp</h1>
            <div class="" id="list-payment">                       
               <div class="item-pay text-center">
                   <p class="d-flex align-midle flex-row-center" style="height: 113px;"><img src="/images/i-pay1.png" alt=""></p>
                   <p class="text-uppercase marb10 SFD">thanh toán qua bảo kim</p>
                   <p>Cổng thanh toán tự động bạn sẽ nhận gói học ngay sau khi thanh toán thành công</p>
                   <p class="pay-price">400.000 VNĐ</p>
                   <div class="group-btn-item-class">
                    <a href="" class="btn transition btn-my-lesson btn-buy m-auto">MUA KHÓA HỌC</a>
                    </div>
               </div>                     
               <div class="item-pay text-center">
                   <p class="d-flex align-midle flex-row-center" style="height: 113px;"><img src="/images/i-pay2.png" alt=""></p>
                   <p class="text-uppercase marb10 SFD">Thanh toán qua ATM</p>
                   <p>Cổng thanh toán tự động bạn sẽ nhận gói học ngay sau khi thanh toán thành công</p>
                   <p class="pay-price">400.000 VNĐ</p>
                   <div class="group-btn-item-class">
                    <a href="" class="btn transition btn-my-lesson btn-buy m-auto">MUA KHÓA HỌC</a>
                    </div>
               </div> 
               <div class="item-pay text-center">
                   <p class="d-flex align-midle flex-row-center" style="height: 113px;"><img src="/images/i-pay3.png" alt=""></p>
                   <p class="text-uppercase marb10 SFD">thanh toán tại nhà</p>
                   <p>Cổng thanh toán tự động bạn sẽ nhận gói học ngay sau khi thanh toán thành công</p>
                   <p class="pay-price">400.000 VNĐ</p>
                    <div class="group-btn-item-class">
                    <a href="" class="btn transition btn-my-lesson btn-buy m-auto">MUA KHÓA HỌC</a>
                    </div>
               </div>                     
               <div class="item-pay text-center">
                   <p class="d-flex align-midle flex-row-center" style="height: 113px;"><img src="/images/i-pay4.png" alt=""></p>
                   <p class="text-uppercase marb10 SFD">thanh toán tại trung tâm</p>
                   <p>Cổng thanh toán tự động bạn sẽ nhận gói học ngay sau khi thanh toán thành công</p>
                   <p class="pay-price">400.000 VNĐ</p>
                   <div class="group-btn-item-class">
                    <a href="" class="btn transition btn-my-lesson btn-buy m-auto">MUA KHÓA HỌC</a>
                    </div>
               </div>   
            </div>
        </div>
    </section>

@endsection

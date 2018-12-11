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
              <h1 class=" text-uppercase sfd mt-5 mb-5 font30">Thanh toán</h1>
               <div class="main-center main-payment" style="opacity: 1;">
                  <ul class="nav nav-wizard ">
                     <li class="active"><a><span class="step">1</span> <span class="step-text">Thông tin khách hàng</span></a></li>
                     <li><a><span class="step">2</span> <span class="step-text">Lựa chọn hình thức thanh toán</span></a></li>
                     <li><a><span class="step">3</span> <span class="step-text">Tạo thành công đơn hàng</span></a></li>
                  </ul>

                  <div class="row">
                     <div class="col-sm-8 col-md-9 ">
                        <div class="step-1-container bg_f8f8f8 pb-4 my-4 ">
                           <div class="customer-info-container">
                              <div class=" payment-heading"><span>Thông tin khách hàng</span> <a class="refresh">
                                 Làm mới <i class="fa fa-refresh"></i></a>
                              </div>
                              <div class=" customer-info-table py-4 px-4">
                                 <p style="font-size: 14px; margin-bottom: 25px;">(<span style="color: rgb(231, 76, 60);">*</span>) Thông tin bắt buộc</p>
                                 <!---->
                                 <table class="table">
                                    <tbody>
                                       <tr>
                                          <td width="200" class="user-form-item important">Tên khách hàng <span>*</span></td>
                                          <td class="user-form-item"><b>Cuong Nguyen test</b>
                                          </td>
                                          <!---->
                                       </tr>
                                       <tr>
                                          <td class="user-form-item important">Số điện thoại <span>*</span></td>
                                          <td class="user-form-item"><span>9856635370</span>
                                          </td>
                                          <!---->
                                       </tr>
                                       <tr>
                                          <td class="user-form-item important">Email <span>*</span></td>
                                          <td class="user-form-item"><span>ccodon6889@gmail.com</span></td>
                                       </tr>
                                       <tr>
                                          <td class="user-form-item">Ngày sinh</td>
                                          <td class="user-form-item">
                                             02/06/1989
                                          </td>
                                       </tr>
                                       <tr>
                                          <td class="user-form-item">Địa chỉ</td>
                                          <td class="user-form-item"><span class="empty-info">Chưa có thông tin</span></td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                            <div class="col-12"><a href="" class="btn transition btn-buy"><span>Tiếp Tục <i class="fa fa-angle-right" aria-hidden="true"></i></span></a></div>
                        </div>
                        <!----> <!---->
                <!-- chờ AJAX-->
                <div class="step-2-container bg_f8f8f8 my-4 full">
                <div class=" payment-heading"><span>Chọn hình thức thanh toán</span></div>
                <div class="px-4  py-4 full">
                 <div class="row">
                   <div class="col-md-4" id="choice_payment_method">
                    <label class="tcb-inline choice_payment_method"><input type="radio" value="4"> <span class="labels">Chuyển phát nhanh mã thẻ kích hoạt - Ship toàn quốc</span></label>
                    <label class="tcb-inline choice_payment_method"><input type="radio" value="3"> <span class="labels">Nộp tại văn phòng</span></label>
                    <label class="tcb-inline choice_payment_method"><input type="radio" value="2"> <span class="labels">Chuyển khoản ngân hàng tại Việt Nam</span></label>
                  </div>

                   <div class="col-md-8">

                      <div id="result_choice">
                        <div class="payment-right-info-area" style="text-align: justify;"><span style="font-size:16px;"><span style="color:#e74c3c"><span style="font-size:18px;">Chú ý: Điền thông tin chi tiết địa chỉ nhận hàng.</span></span><br>
                           <br>
                           <span style="color:#000000;">* Khi bạn nhấp chuột vào xác nhận đơn hàng, bạn đã đồng ý với </span><a href="#"><span style="color:#ff0000;">Điều khoản sử dụng</span></a><span style="color:#000000;"> và </span><a href="#"><span style="color:#ff0000;">Chính sách bảo mật</span></a><span style="color:#000000;"> của website</span></span><br>
                        </div>
                        <div class="delivery-info">
                           <div class="row form-group">
                              <div class="col-sm-5 important">Tên người nhận <span title="Thông tin bắt buộc">*</span></div>
                              <div class="col-sm-7"><input type="text" placeholder="Tên người nhận" class="form-control"></div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-5 important">Số điện thoại <span title="Thông tin bắt buộc">*</span></div>
                              <div class="col-sm-7"><input type="text" placeholder="Số điện thoại" class="form-control"></div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-5 important">Địa chỉ người nhận hàng <span title="Thông tin bắt buộc">*</span> <br>(vui lòng điền đầy đủ)</div>
                              <div class="col-sm-7"><textarea rows="3" placeholder="Địa chỉ giao hàng" class="form-control"></textarea></div>
                           </div>
                        </div>
                      </div>


                   </div>
                  </div>
                  </div>
                </div> <!--./step-2-->

                <div class="step-3-container bg_f8f8f8 my-4 full">
                  <div class=" payment-heading"><span>Tạo đơn hàng thành công</span></div>
                  <div class="px-4  py-4 full"></div>
                </div> <!--./step-3-->


                     </div>
                     <div class="col-sm-4 col-md-3">
                        <div class="payment-info-container bg_f8f8f8 my-4 pb-4">
                           <div class="payment-heading"><span>Thông tin đơn hàng</span></div>
                           <div class="payment-sb">
                              <div class="title-body-item-class">
                                {{$package['name']}}
                                  <span class="tuition">học phí: <b>
                                  {{ $package['price_sale'] ? priceFormat($package['price']) : priceFormat($package['price'])}} đ
                                  </b></span>
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
                              </div>
                           </div>
                           <hr>
                           <h4 class="total-payment">Tổng tiền  <span> {{ $package['price_sale'] ? priceFormat($package['price']) : priceFormat($package['price'])}} ₫</span></h4>
                        </div>
                     </div>
                  </div>

               </div>
            </div>
        </div>
    </section>

@endsection



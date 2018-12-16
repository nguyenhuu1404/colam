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
                        <li class="breadcrumb-item active" aria-current="page">Thanh toán</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
    <section class="contact-box SFD mb-5 w-100">
        <div class="container">
            <form  name="NLpayBank" action="/payment/paymentCourse" method="post">
            @csrf
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
                                          <td class="user-form-item">
                                          <b>{{$user['name']}}</b>
                                          <input type="hidden" name="fullname" value="{{$user['name']}}" />
                                          </td>
                                          <!---->
                                       </tr>
                                       <tr>
                                          <td class="user-form-item important">Số điện thoại <span>*</span></td>
                                          <td class="user-form-item">
                                          <span id="textPhone">{{$user['phone'] ? $user['phone'] : 'Chưa có thông tin' }}
                                          </span>
                                          <input type="hidden" name="mobile" value="{{$user['phone']}}" />
                                          <span id="inputPhone" class="hidden">
                                            <input value="{{$user['phone']}}" type="text" id="phone" name="phone" />
                                            <button onclick="addPhone();" class="btn btn-sm btn-warning">Lưu lại</button>
                                            <button onclick="showPhone();" class="btn btn-sm btn-danger">Hủy bỏ</button>
                                          </span>

                                          <span onclick="showPhone();" class="float-right badge badge-warning pointer">Chỉnh sửa</span>
                                          <p id="errorPhone" class="hidden alert alert-danger">Số điện thoại không được bỏ trống!</p>
                                          </td>
                                          <!---->
                                       </tr>
                                       <tr>
                                          <td class="user-form-item important">Email <span>*</span></td>
                                          <td class="user-form-item"><span>{{$user['email']}}</span>
                                          <input type="hidden" name="email" value="{{$user['email']}}" />
                                          </td>
                                       </tr>

                                       <tr>
                                          <td class="user-form-item">Địa chỉ</td>
                                          <td class="user-form-item"><span class="empty-info">{{$user['address'] ? $user['address'] : 'Chưa có thông tin' }}</span>
                                          <input type="hidden" name="address" value="{{ $user['address'] ? $user['address'] : 'hanoi'}}" />
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                            <div class="col-12">
                            <button onclick="chociePay()" class="btn transition btn-buy"><span>Tiếp Tục <i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
                            </div>
                        </div>
                        <!----> <!---->
                <!-- chờ AJAX-->
                <div class="step-2-container bg_f8f8f8 my-4 full">
                    <div class=" payment-heading"><span>Chọn hình thức thanh toán</span></div>
                    <div class="px-4  py-4 full">


	<ul class="list-content">
		<li class="active">
			<label><input type="radio" value="CK" name="option_payment" selected="true">Chuyển khoản</label>
			<div class="boxContent">
				<p>
				Thanh toán chuyển khoản
				</p>
			</div>
		</li>
		<li>
			<label><input type="radio" value="ATM_ONLINE" name="option_payment">Thanh toán online bằng thẻ ngân hàng nội địa</label>
			<div class="boxContent">
				<p><i>
				<span style="color:#ff5a00;font-weight:bold;text-decoration:underline;">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>

						<ul class="cardList clearfix">
						<li class="bank-online-methods ">
							<label for="vcb_ck_on">
								<i class="BIDV" title="Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam"></i>
								<input type="radio" value="BIDV"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="vcb_ck_on">
								<i class="VCB" title="Ngân hàng TMCP Ngoại Thương Việt Nam"></i>
								<input type="radio" value="VCB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="vnbc_ck_on">
								<i class="DAB" title="Ngân hàng Đông Á"></i>
								<input type="radio" value="DAB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="tcb_ck_on">
								<i class="TCB" title="Ngân hàng Kỹ Thương"></i>
								<input type="radio" value="TCB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_mb_ck_on">
								<i class="MB" title="Ngân hàng Quân Đội"></i>
								<input type="radio" value="MB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_vib_ck_on">
								<i class="VIB" title="Ngân hàng Quốc tế"></i>
								<input type="radio" value="VIB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_vtb_ck_on">
								<i class="ICB" title="Ngân hàng Công Thương Việt Nam"></i>
								<input type="radio" value="ICB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_exb_ck_on">
								<i class="EXB" title="Ngân hàng Xuất Nhập Khẩu"></i>
								<input type="radio" value="EXB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_acb_ck_on">
								<i class="ACB" title="Ngân hàng Á Châu"></i>
								<input type="radio" value="ACB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_hdb_ck_on">
								<i class="HDB" title="Ngân hàng Phát triển Nhà TPHCM"></i>
								<input type="radio" value="HDB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_msb_ck_on">
								<i class="MSB" title="Ngân hàng Hàng Hải"></i>
								<input type="radio" value="MSB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_nvb_ck_on">
								<i class="NVB" title="Ngân hàng Nam Việt"></i>
								<input type="radio" value="NVB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_vab_ck_on">
								<i class="VAB" title="Ngân hàng Việt Á"></i>
								<input type="radio" value="VAB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_vpb_ck_on">
								<i class="VPB" title="Ngân Hàng Việt Nam Thịnh Vượng"></i>
								<input type="radio" value="VPB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="sml_atm_scb_ck_on">
								<i class="SCB" title="Ngân hàng Sài Gòn Thương tín"></i>
								<input type="radio" value="SCB"  name="bank_code" >

						</label></li>



						<li class="bank-online-methods ">
							<label for="bnt_atm_pgb_ck_on">
								<i class="PGB" title="Ngân hàng Xăng dầu Petrolimex"></i>
								<input type="radio" value="PGB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="bnt_atm_gpb_ck_on">
								<i class="GPB" title="Ngân hàng TMCP Dầu khí Toàn Cầu"></i>
								<input type="radio" value="GPB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="bnt_atm_agb_ck_on">
								<i class="AGB" title="Ngân hàng Nông nghiệp &amp; Phát triển nông thôn"></i>
								<input type="radio" value="AGB"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="bnt_atm_sgb_ck_on">
								<i class="SGB" title="Ngân hàng Sài Gòn Công Thương"></i>
								<input type="radio" value="SGB"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="BAB" title="Ngân hàng Bắc Á"></i>
								<input type="radio" value="BAB"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="TPB" title="Tền phong bank"></i>
								<input type="radio" value="TPB"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="NAB" title="Ngân hàng Nam Á"></i>
								<input type="radio" value="NAB"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="SHB" title="Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)"></i>
								<input type="radio" value="SHB"  name="bank_code" >

						</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="OJB" title="Ngân hàng TMCP Đại Dương (OceanBank)"></i>
								<input type="radio" value="OJB"  name="bank_code" >

						</label></li>





					</ul>

			</div>
		</li>
		<li>
			<label><input type="radio" value="VISA" name="option_payment" selected="true">Thanh toán bằng thẻ Visa hoặc MasterCard</label>
			<div class="boxContent">
				<p><span style="color:#ff5a00;font-weight:bold;text-decoration:underline;">Lưu ý</span>:Visa hoặc MasterCard.</p>
				<ul class="cardList clearfix">
						<li class="bank-online-methods ">
							<label for="vcb_ck_on">
								Visa:
								<input type="radio" value="VISA"  name="bank_code" >

						</label></li>

						<li class="bank-online-methods ">
							<label for="vnbc_ck_on">
								Master:<input type="radio" value="MASTER"  name="bank_code" >
						</label></li>
				</ul>
			</div>
		</li>

	</ul>



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
                                {{$course['name']}}
                                  <span class="tuition">học phí: <b>
                                  {{ $course['price_sale'] ? priceFormat($course['price']) : priceFormat($course['price'])}} đ
                                  </b></span>
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
                           <h4 class="total-payment">Tổng tiền  <span> {{ $course['price_sale'] ? priceFormat($course['price']) : priceFormat($course['price'])}} ₫</span></h4>
                           <input type="hidden" name="total_amount" value="{{ $course['price_sale'] ? $course['price'] : $course['price']}}" />
                           <input type="hidden" name="product_name" value="{{ $course['name']}}" />

                        </div>
                     </div>
                  </div>

               </div>
            </div>

            <input type="submit" name="nlpayment" class="btn btn-warning" value="thanh toán"/>
        </form>
        </div>

    </section>

@endsection

@push('scripts')

<script>
    function showPhone(){
        $('#inputPhone').toggle();
        $('#textPhone').toggle();
    }
    function addPhone(){
        var phone = $('#phone').val();
        if(phone != ''){
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
            $.ajax({
                method: "POST",
                url: "{{ route('api.payment.updatePhone') }}",
                data: {_token: CSRF_TOKEN, phone: phone}
            })
            .done(function( data ) {
                location.reload();
            });
        }else{
            $('#errorPhone').show();

        }
    }
    function chociePay(){
        var phone = $('#phone').val();
        if(phone != ''){

        }else{
            $('#errorPhone').show();
        }
    }

</script>

<script src="https://www.nganluong.vn/webskins/javascripts/jquery_min.js" type="text/javascript"></script>
<script language="javascript">
    $('input[name="option_payment"]').bind('click', function() {
    $('.list-content li').removeClass('active');
    $(this).parent().parent('li').addClass('active');
    });
</script>

@endpush


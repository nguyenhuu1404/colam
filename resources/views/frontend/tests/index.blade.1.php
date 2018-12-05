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
								<li class="breadcrumb-item active" aria-current="page">Test</li>
							</ol>
						</nav>
					</div>
				</div>
			</section>
			<section class="lesson-box">
				<div class="container">
					<div class="row">
						<div class="col-md-8 ">
							<div class="title-content-lesson">
								<div class="left-title-lesson">
									<div class="h2">N5</div>
									<span>4 tháng</span>
								</div>
								<div class="right-title-lesson">
									<div>
										<div class="h3">Bài Test - Từ Vựng</div>
										<p>30 câu</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 ">
							<div class="font18 float-left">
								<i><img src="/images/i-test-hour.png" alt="icon"></i>
								Thời gian: <b>2 phút 52s</b>
							</div>
							<div class="float-right"><a href="" class="btn-readmore transition font18">Kết thúc</a></div>
						</div>
						<div class="col-12"><hr></div>
						<div class="col-md-2 number-test cl_16a085 bold font25">Câu 1/30</div>
						<div class="col-md-10 test-item">
							<div class="test-cauhoi border-dashed w-100 mb-2 p-4 ">
								Et eum inani epicuri omnesque, eu mea minim nostrud hendrerit. Animal placerat hendrerit sed no. Te pri posse facer vitae. Choro scripserit eu usu, no nullam populo eloquentiam vix. Nam erat liber praesent ex, ad pri novum legere, pri copiosae senserit ad.
							</div>
							<div class="text-center bold w-100 my-3">Trả lời</div>
							<div class="row test-dapan">
								<div class="col-md-6 mb-4"><div class=" test-item-dapan font18 bold transition px-3 py-3">Dap an so 1</div></div>
								<div class="col-md-6 mb-4"><div class=" test-item-dapan font18 bold transition px-3 py-3">Dap an so 2</div></div>
								<div class="col-md-6 mb-4"><div class=" test-item-dapan font18 bold transition px-3 py-3">Dap an so 3</div></div>
								<div class="col-md-6 mb-4"><div class=" test-item-dapan font18 bold transition px-3 py-3">Dap an so 4</div></div>
							</div>
							<div class="float-right"><a href="" class="btn btn-andy btn-danger">Câu tiếp theo <i class="fa fa-arrow-right"></i></a></div>
						</div>
					</div>
				</div>
			</section>


@endsection

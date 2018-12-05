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
								<li class="breadcrumb-item active" aria-current="page">Test</li>
							</ol>
						</nav>
					</div>
				</div>
			</section>
			<section class="lesson-box">
				<div class="container">
					<div class="row">
						<div class="col-md-12 ">
							<div class="title-content-lesson">
								<div class="left-title-lesson">
									<div class="h2">N5</div>
									<span>4 tháng</span>
								</div>
								<div class="right-title-lesson">
									<div class="h3">Bài Test - Từ Vựng</div>
								</div>
							</div>
						</div>

						<div class="col-12"><hr></div>


                        <form id="form_question_nn" class="question_content pd-0 item mgb15 form-horizontal bd-div bgclor" method="post">

                            <?php foreach($questions as $key =>$value):?>
                                <div id="idFieldset" class="row top20 left20">
                                        <div class="col-md-12">
                                        <div class="stt question_<?=$value['id'];?>">Câu : <?=$key+1;?></div>
                                        </div>
                                        <div class="col-md-12 top10">
                                            <input type="hidden" name="questions[<?=$value['id']?>]" value="<?=$value['id']?>"/>

                                            <p><span class="ptnn-title"> <?=$value['name'];?></span></p>
                                            <?php
                                                //answer
                                                $dataAnswer['answers'] = $processAnswer[$value['id']];
                                                $dataAnswer['qestionId'] = $value['id'];
                                            ?>
                                            @include('frontend.tests.choice', $dataAnswer);

                                            <a href="#mobile-explan-<?=$value['id'];?>" class="explanation top10 hidden btn btn-success btn-show-exp" data-toggle="collapse">Lý giải</a>

                                            <div id="mobile-explan-<?=$value['id'];?>" class="collapse top10 item" style="border: 1px solid rgb(221, 221, 221);
                                            border-radius: 5px;
                                            padding: 10px;
                                            text-align: justify;
                                            background: rgb(255, 255, 255); margin-bottom:10px;">
                                                <div class="item">
                                                <?=$value['explain'];?>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="line-question"></div>
                                </div>
                            <?php endforeach;?>

                            <div class="item mgb20">

                                <button id="finish-choice" class="btn btn-primary" name="finish-choice" onclick="finish_choice();" type="button">
                                    Hoàn thành
                                </button>

                            </div>

                        </form>


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

						</div>
					</div>
				</div>
			</section>


@endsection

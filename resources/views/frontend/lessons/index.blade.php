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
                    <li class="breadcrumb-item active" aria-current="page">Các khóa học</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<section class="lesson-box">
    <div class="container">
        <div class="row">
            <div class="col-xl-3">
                <div class="title-slidebar">Tiến trình học</div>
                <div class="section-sb-current">
                    <ul class="section-sb-list">
                        <li class="cat-item has_child opened">
                            <a href="javascript:void(0)">Bảng chữ cái hiragana</a>
                            <ul class="children">
                                <li><a href="#">Giới thiệu về bảng chữ cái trong tiếng nhật</a></li>
                                <li class="active"><a href="#">Bài 1 - Hiragana A I Ư Ê Ô</a></li>
                                <li><a href="#">Bài 2 - Hiragana Ta, Chi, Tsu, Te, To</a></li>
                                <li><a href="#">Bài 3 - Hiragana Ga, Gi, Gu, Ge, Go</a></li>
                                <li><a href="#">Bài 4 - Hiragana Kya, Kyu, Kyo, Gya, Gyu, Gyo</a></li>
                                <li><a href="#">Bài 5: Cách đọc trong tiếng nhật</a></li>
                                <li><a href="#">Bài 6: Cách phân biệt đơn giản - Từ có trường âm và không có trường âm.</a></li>
                            </ul>
                        </li>
                        <li class="cat-item has_child">
                            <a href="javascript:void(0)">Bảng chữ cái katakana</a>
                        </li>
                        <li class="cat-item has_child">
                            <a href="javascript:void(0)">Những bài học thú vị</a>
                        </li>
                    </ul>
                </div>
                <div class="section-sb-current">
                    <img src="/images/sale-qc.png">
                </div>
            </div>
            <div class="col-xl-9 pd-0-30">
                <div class="title-content-lesson">
                    <div class="left-title-lesson">
                        <div class="h2">N5</div>
                        <span>4 tháng</span>
                    </div>
                    <div class="right-title-lesson">
                        <div>
                            <div class="h3">Bài 2 - Hiragana Ta,Chi,Tsu,Te,To</div>
                            <p>15 lượt xem </p>
                        </div>
                    </div>
                </div>
                <div class="body-content-lesson">
                    <div class="row">
                        <div class="col-xl-7 bd-top-gray p-0">
                            <div class="info-combo border-top-0 mt-0">
                                <div class="item-info-combo">
                                    <i><img src="/images/icon-hours.png" alt="icon"></i>
                                    Thời hạn: 10 tháng
                                </div>
                                <div class="item-info-combo">
                                    <i><img src="/images/icon-video.png" alt="icon"></i>
                                    Video: 150
                                </div>
                                <div class="item-info-combo">
                                    <i><img src="/images/icon-3code.png" alt="icon"></i>
                                    Mã số: CL45N
                                </div>
                                <div class="item-info-combo">
                                    <i><img src="/images/icon-file.png" alt="icon"></i>
                                    Bài test: 50
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 d-flex align-items-center justify-content-end bd-top-gray">
                            <img src="/images/icon-clock-hour.png">
                            Còn lại: <b>85 ngày</b>
                        </div>
                        <div class="col-xl-12 mt-5 p-0">
                            <iframe class="iframe" height="450" src="https://www.youtube.com/embed/yU6BSPNnuWA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                            <div class="description-body-content-lesson">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat.
                            </div>
                            <div class="form-group text-center mt-5">
                                <button type="button" class="btn btn-test">Làm bài Test</button>
                            </div>
                        </div>

                        <div class="col-xl-12 p-0">
                            <div class="box-comment-lesson">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#comment">Ý kiến bình luận</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#facebook">Bình luận bằng facebook</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane container active" id="comment">
                                        <div class="body-comment">
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment"></div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Hoanhbc <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thi thử trên wep có mất phí k ạ</div>
                                                    </div>
                                                </div>
                                                <div class="children-item">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                                <div class="reply-comment">
                                                    <a href="#"><i class="fa fa-comment"></i>
                                                    trả lời</a>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-body-comment">
                                                <div class="parent-itemt">
                                                    <div class="avartar-item-comment">
                                                        <img src="/images/img-avatar-1.png">
                                                    </div>
                                                    <div class="text-item-comment">
                                                        <div class="name-info-item-comment">Trường Chiến <span>24/10/2018 18:24</span></div>
                                                        <div class="content-post-item-comment">Thầy ơi thầy có thể cho em vài đề thi thử n5 không ạ . E chuẩn bị thi topj</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="other-classroom">
                                            <div class="title-other"><span>Khóa học khác</span></div>
                                            <div class="body-other-classroom">
                                                <div class="row">
                                                    <div class="col-xl-12 item-class">
                                                        <div class="thumbnail-tab-class">
                                                            <img src="/images/img-class.png">
                                                            <div class="info-class-position">
                                                                <div class="h3">N5</div>
                                                                <p>4 tháng</p>
                                                            </div>
                                                        </div>
                                                        <div class="body-item-class">
                                                            <div class="title-body-item-class">
                                                                N5 - Khóa học dành cho sinh viên du học
                                                                <span class="tuition">học phí: <b>990,000</b></span>
                                                            </div>
                                                            <div class="content-item-class">
                                                                <div class="info-item-class">
                                                                    <div class="duration">L</div>
                                                                    Thời gian học: 4 tháng
                                                                </div>
                                                                <div class="info-item-class">
                                                                    <div class="number-video"></div>
                                                                    Số video: 123
                                                                </div>
                                                                <div class="group-btn-item-class">
                                                                    <a href="" class="btn btn-more mr-2">CHI TIẾT</a>
                                                                    <a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-12 item-class">
                                                        <div class="thumbnail-tab-class">
                                                            <img src="/images/img-class.png">
                                                            <div class="info-class-position">
                                                                <div class="h3">N5</div>
                                                                <p>4 tháng</p>
                                                            </div>
                                                        </div>
                                                        <div class="body-item-class">
                                                            <div class="title-body-item-class">
                                                                N5 - Khóa học dành cho sinh viên du học
                                                                <span class="tuition">học phí: <b>990,000</b></span>
                                                            </div>
                                                            <div class="content-item-class">
                                                                <div class="info-item-class">
                                                                    <div class="duration">L</div>
                                                                    Thời gian học: 4 tháng
                                                                </div>
                                                                <div class="info-item-class">
                                                                    <div class="number-video"></div>
                                                                    Số video: 123
                                                                </div>
                                                                <div class="group-btn-item-class">
                                                                    <a href="" class="btn btn-more mr-2">CHI TIẾT</a>
                                                                    <a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-12 item-class">
                                                        <div class="thumbnail-tab-class">
                                                            <img src="/images/img-class.png">
                                                            <div class="info-class-position">
                                                                <div class="h3">N5</div>
                                                                <p>4 tháng</p>
                                                            </div>
                                                        </div>
                                                        <div class="body-item-class">
                                                            <div class="title-body-item-class">
                                                                N5 - Khóa học dành cho sinh viên du học
                                                                <span class="tuition">học phí: <b>990,000</b></span>
                                                            </div>
                                                            <div class="content-item-class">
                                                                <div class="info-item-class">
                                                                    <div class="duration">L</div>
                                                                    Thời gian học: 4 tháng
                                                                </div>
                                                                <div class="info-item-class">
                                                                    <div class="number-video"></div>
                                                                    Số video: 123
                                                                </div>
                                                                <div class="group-btn-item-class">
                                                                    <a href="" class="btn btn-more mr-2">CHI TIẾT</a>
                                                                    <a href="" class="btn btn-buy">MUA KHÓA HỌC</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane container fade" id="facebook"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection
@push('scripts')
<script>
    $('.cat-item a').click(function(){
    $(this).parent().toggleClass('opened');
})

</script>
@endpush


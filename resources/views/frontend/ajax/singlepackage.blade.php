
<ul class="nav nav-tabs d-flex justify-content-center" id="myTab" role="tablist">
    @foreach($courseTypes as $courseType)
    <li class="nav-item">
        <a class="nav-link text-uppercase {{$courseType == 'n5' ? 'active' : ''}}" id="{{$courseType}}-tab" data-toggle="tab" href="#{{$courseType}}" role="tab" aria-controls="{{$courseType}}" aria-selected="false">{{$courseType}}</a>
    </li>
    @endforeach
</ul>
<div class="tab-content" id="myTabContent">
    @foreach($courseTypes as $courseType)
    <div class="tab-pane fade {{$courseType == 'n5' ? 'show active' : ''}}" id="{{$courseType}}" role="tabpanel" aria-labelledby="profile-tab">

        <div class="owl-carousel owl-theme owl-3-items">
            @if(isset($courses[$courseType]) >0 )
                @foreach($courses[$courseType] as $key => $course)
                <div class="item-class {{ $key % 2 !=0 ? 'yellow' : ''}}">
                    <div class="thumbnail-tab-class">
                        <img src="{{ Storage::url($course['image']) }}">
                        <div class="info-class-position">
                            <div class="h3">{{$course['name']}}</div>
                            <p>{{$course['time']}} tháng</p>
                        </div>
                    </div>
                    <div class="body-item-class">
                        <div class="title-body-item-class">
                        {{$course['name']}} @if($course['title']) - @endif {{$course['title']}}
                            <span class="tuition fs18">
                            học phí: <b>{{$course['price_sale'] ? priceFormat($course['price_sale']) : priceFormat($course['price'])}}</b>
                            @if($course['price_sale'])
                            <b class="sale-price">{{priceFormat($course['price'])}}</b>
                            @endif
                            </span>
                        </div>
                        <div class="content-item-class">
                            <div class="info-item-class">
                                <div class="duration">L</div>
                                Thời gian học:  {{$course['time']}} tháng
                            </div>
                            <div class="info-item-class">
                                <div class="number-video"></div>
                                Số video:  {{$course['video_number']}}
                            </div>
                            @if($course['lock'] == 1)
                            <div class="group-btn-item-class">
                                <button onclick="lockMessage()" class="btn transition btn-more mr-2">CHI TIẾT</button>
                                <button onclick="lockMessage()" class="btn transition btn-buy">MUA KHÓA HỌC</button>
                            </div>
                            @else
                            <div class="group-btn-item-class">
                                <a href="/khoa-hoc/{{$course['id']}}-{{$course['slug']}}" class="btn btn-more mr-2">CHI TIẾT</a>
                                <a href="/thanh-toan/{{$course['id']}}-{{$course['slug']}}" class="btn btn-buy">MUA KHÓA HỌC</a>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            @endif

        </div>

    </div>
    @endforeach

</div>
<script>

$(".owl-3-items").owlCarousel({
    nav:false,
    loop:false,
    dots: true,
    margin:30,
    responsive:{
        0:{
            items:1
        },
        768:{
            items:2
        },
        1024:{
            items:3
        }
    }
});
</script>


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
            @if(isset($singlePackages[$courseType]) >0 )
                @foreach($singlePackages[$courseType] as $key => $package)
                <div class="item-class {{ $key % 2 !=0 ? 'yellow' : ''}}">
                    <div class="thumbnail-tab-class">
                        <img src="{{ Storage::url($package['image']) }}">
                        <div class="info-class-position">
                            <div class="h3">{{$package['name']}}</div>
                            <p>{{$package['time']}} tháng</p>
                        </div>
                    </div>
                    <div class="body-item-class">
                        <div class="title-body-item-class">
                        {{$package['name']}} {{$package['title']}}
                            <span class="tuition">học phí: <b>{{priceFormat($package['price'])}}</b></span>
                        </div>
                        <div class="content-item-class">
                            <div class="info-item-class">
                                <div class="duration">L</div>
                                Thời gian học:  {{$package['time']}} tháng
                            </div>
                            <div class="info-item-class">
                                <div class="number-video"></div>
                                Số video:  {{$package['video_number']}}
                            </div>
                            <div class="group-btn-item-class">
                                <a href="/khoa-hoc/{{$package['course_id']}}-{{$package['slug']}}" class="btn btn-more mr-2">CHI TIẾT</a>
                                <a href="/thanh-toan/{{$package['id']}}-{{$package['slug']}}" class="btn btn-buy">MUA KHÓA HỌC</a>
                            </div>
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

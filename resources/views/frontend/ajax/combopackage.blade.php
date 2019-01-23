<div class="owl-carousel owl-theme owl-3-items">
    @if(count($comboPackages) >0 )
        @foreach($comboPackages as $key => $package)
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
                    <span class="tuition fs18">
                    học phí: <b>{{$package['price_sale'] ? priceFormat($package['price_sale']) : priceFormat($package['price'])}}</b>
                    @if($package['price_sale'])
                    <b class="sale-price">{{priceFormat($package['price'])}}</b>
                    @endif
                    </span>
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
                    @if($package['lock'] == 1)
                    <div class="group-btn-item-class">
                        <button onclick="lockMessage()" class="btn transition btn-more mr-2">CHI TIẾT</button>
                        <button onclick="lockMessage()" class="btn transition btn-buy">MUA KHÓA HỌC</button>
                    </div>
                    @else
                    <div class="group-btn-item-class">
                        <a href="/khoa-hoc/package/{{$package['id']}}-{{$package['slug']}}" class="btn btn-more mr-2">CHI TIẾT</a>
                        <a href="/thanh-toan/package/{{$package['id']}}-{{$package['slug']}}" class="btn btn-buy">MUA KHÓA HỌC</a>
                    </div>
                    @endif
                </div>
            </div>
        </div>
        @endforeach
    @endif

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



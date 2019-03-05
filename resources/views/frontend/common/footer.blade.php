<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 top-footer">
                <img src="/images/logo-footer.png">
                <div class="h2">LAM SENSEI</div>
                <div class="h5">Tieng Nhat Co Lam</div>
            </div>
            <div class="col-xl-4">
                <div class="item-footer hotline-footer">
                    <img src="/images/icon-hotline-footer.png">
                    <div class="text-footer-sns">
                        Hotline
                        <span>{{ setting('site.hotline') }}</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-4">
                <div class="item-footer youtube-footer">
                    <img src="/images/icon-youtube-footer.png">
                    <div class="text-footer-sns">
                        Youtube Chanel
                        <span><a class="vang" href="https://www.youtube.com/channel/UCsVnn22UuJBBQBARu-4IFeg/videos">Tiếng Nhật cô Lam </a></span>
                    </div>
                </div>
            </div>
            <div class="col-xl-4">
                <div class="item-footer facebook-footer">
                    <img src="/images/icon-facebook-footer.png">
                    <div class="text-footer-sns">
                        Fanpage FB
                        <span><a class="vang" href="https://www.facebook.com/hoctiengnhatcolam">https://www.facebook.com/
                            hoctiengnhatcolam</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-footer">
        <div class="container">
            <div class="d-flex justify-content-between">
                <div class="copy-right">©2018<a href="#"> tiengnhatcolam.vn </a>all right reserved</div>
                <a href="tel:0372232268"><img src="/images/icon-hotline-bottom-footer.png"></a>
            </div>
        </div>
    </div>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-133236365-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-133236365-1');
</script>
<!-- Your customer chat code -->



<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v3.2'
    });
  };

  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div class="fb-livechat">
   <div class="ctrlq fb-overlay"></div>
   <div class="fb-widget">
      <div class="ctrlq fb-close"></div>
      <div class="fb-page" data-href="https://www.facebook.com/hoctiengnhatcolam/" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div>
      <div class="fb-credit text-center"> <a href="https://tiengnhatcolam.vn/" target="_blank">Học tiếng Nhật Cô Lam</a> </div>
      <div id="fb-root"></div>
   </div>
    <a href="https://m.me/hoctiengnhatcolam" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button">
      <div class="bubble">1</div>
      <div class="bubble-msg">Gửi tin nhắn cho chúng tôi qua Facebook</div>
   </a>
</div>
<!-- <div class="fb-customerchat"
  attribution=setup_tool
  page_id="2189999934581660"
  theme_color="#4267B2"
  logged_in_greeting="Chào mừng các bạn đến với tiếng Nhật cô Lam. Chúng tôi có thể giúp gì cho bạn?^^"
  logged_out_greeting="Chào mừng các bạn đến với tiếng Nhật cô Lam. Chúng tôi có thể giúp gì cho bạn?^^">
</div>  -->
</footer>
<style type="text/css">
  .ctrlq.fb-button {
    

    background: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiM0MjY3QjIiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+') center no-repeat #4267B2;
    width: 60px;
    height: 60px;
    z-index: 999;
    text-align: center;
    bottom: 80px;
    border: 0;
    outline: 0;
    border-radius: 60px;
    -webkit-border-radius: 60px;
    -moz-border-radius: 60px;
    -ms-border-radius: 60px;
    -o-border-radius: 60px;
    box-shadow: 0 1px 6px rgba(0, 0, 0, 0.06), 0 2px 32px rgba(0, 0, 0, 0.16);
    -webkit-transition: box-shadow .2s ease;
    background-size: 80%;
    transition: all .2s ease-in-out;
}
.fb-credit a {
    transition: none;
    color: #bec2c9;
    font-family: Helvetica, Arial, sans-serif;
    font-size: 12px;
    text-decoration: none;
    border: 0;
    font-weight: 400;
}
.ctrlq.fb-close {
    z-index: 4;
    padding: 0 6px;
    background: #365899;
    font-weight: 700;
    font-size: 11px;
    color: #fff;
    margin: 8px;
    border-radius: 3px;
}
.ctrlq.fb-close::after {
    content: "X";
    font-family: sans-serif;
}
.bubble {
    width: 20px;
    height: 20px;
    background: #c00;
    color: #fff;
    position: absolute;
    z-index: 999999999;
    text-align: center;
    vertical-align: middle;
    top: -2px;
    left: -5px;
    border-radius: 50%;
}
.bubble-msg {
    width: 120px;
    left: -140px;
    top: 5px;
    position: relative;
    display: none;
    background: rgba(59, 89, 152, 0.8);
    color: #fff;
    padding: 5px 8px;
    border-radius: 8px;
    text-align: center;
    font-size: 13px;
}
.ctrlq.fb-button, .ctrlq.fb-close {
    position: fixed;
    right: 25px;
    cursor: pointer;
}
.fb-livechat, .fb-widget {
    display: none;
}
.fb-widget {
    background: #fff;
    z-index: 1000;
    position: fixed;
    width: 360px;
    height: 435px;
    overflow: hidden;
    opacity: 0;
    bottom: 0;
    right: 24px;
    border-radius: 6px;
    -o-border-radius: 6px;
    -webkit-border-radius: 6px;
    box-shadow: 0 5px 40px rgba(0, 0, 0, 0.16);
    -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, 0.16);
    -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, 0.16);
    -o-box-shadow: 0 5px 40px rgba(0, 0, 0, 0.16);
}
@media only screen and (max-width: 767px){
  .ctrlq.fb-button {
      width: 40px;
      height: 40px;
      bottom: 30px;
      right: 15px;
  }
}
</style>

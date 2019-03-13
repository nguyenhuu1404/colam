var question_audios = {};
var current_sound = null;
var current_sound_url = null;
function read_question(elem, url) {
	if(current_sound) {
		current_sound.pause();
		current_sound.currentTime = 0;
		current_sound.onended();
	}
	if(current_sound_url == url) {
		current_sound_url = null;
		return ;
	} else {
		current_sound_url = url;
	}
	$(elem).removeClass('fa-volume-up').addClass('fa-volume-off');
	if(1 || typeof question_audios[url] == 'undefined') {
		sound = new Audio(url);
		sound.loop = false;
		question_audios[url] = sound;
		sound.onended = function() {
			$(elem).removeClass('fa-volume-off').addClass('fa-volume-up');
		};
	}
	current_sound = question_audios[url];
	fetch(url)
    .then(function() {
      question_audios[url].play();
    });
}
function lockMessage(){
    var message = "Rất xin lỗi vì sự bất tiện. Hiện khóa học này vẫn đang trong quá trình xây dựng. Vui lòng truy cập fanpage https://www.facebook.com/hoctiengnhatcolam Hoặc liên hệ HOTLINE 037 223 2268 để biết thêm chi tiết và để lại thông tin để chúng tôi liên hệ lại cho bạn ngay khi khóa học hoàn thành. Xin chân thành cảm ơn !";
    alert(message);
}

$(document).ready(function(){
    $('.js-toggle-search').click(function(){
        $('body').toggleClass('show');
        $(this).find('i').toggleClass('fa-times');
    });

    //xu ly mainmenu
    var ww = document.body.clientWidth;
    if(ww < 600){

        $('ul#andy').toggleClass('ccodon');
        var menuList = $(".ccodon").find("li.hasmenu");
        menuList.find("ul").hide();
        menuList.on("click", function(e){
        var childUl = $(this).find("ul");
        if (childUl.length < 1 || childUl.is(':visible')) {
            return;
        }
        e.preventDefault();
        menuList.removeClass("active");
        menuList.find("ul").slideUp(400);
        childUl.slideDown(400);
        $(this).addClass("active");
        });

    }

    function detectmob() {
        if (navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i)) {
            return true;
        } else {
            return false;
        }
    }
    var t = {
        delay: 125,
        overlay: $(".fb-overlay"),
        widget: $(".fb-widget"),
        button: $(".fb-button")
    };
    setTimeout(function() {
        $("div.fb-livechat").fadeIn()
    }, 8 * t.delay);
    if (!detectmob()) {
        $(".ctrlq").on("click", function(e) {
            e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({
                bottom: 0,
                opacity: 0
            }, 2 * t.delay, function() {
                $(this).hide("slow"), t.button.show()
            })) : t.button.fadeOut("medium", function() {
                t.widget.stop().show().animate({
                    bottom: "30px",
                    opacity: 1
                }, 2 * t.delay), t.overlay.fadeIn(t.delay)
            })
        })
    }


    if(0){
        $('body').bind('cut copy paste', function (e) {
            e.preventDefault();
        });
        $("body").on("contextmenu",function(e){
            return false;
        });
        $(document).keydown(function(event){
            if (event.keyCode == 123 || (event.ctrlKey && event.keyCode == 85) || (event.ctrlKey && event.shiftKey && event.keyCode == 73 || event.keyCode == 116)) {
                            return false;
                    } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) {
                            return false; //Prevent from ctrl+shift+i
                    }
        });
    }

});

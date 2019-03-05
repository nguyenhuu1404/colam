
$(document).ready(function(){
    $('.js-toggle-search').click(function(){
        $('body').toggleClass('show');
        $(this).find('i').toggleClass('fa-times');
    });
    $("#menu-mobile").mmenu();

})

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

if(1){
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

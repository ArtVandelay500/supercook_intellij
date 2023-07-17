$(function(){
    $("#modal").hide();
    $("#modalWindow").hide();

    $(".modalBtn").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $("#modalWindow").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
        $("body").style.overflow = "hidden";//스크롤바 제거
    });

    $(".modalClose").on("click",function(){
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $("#modalWindow").fadeOut();
        $("body").style.overflow = "auto";//스크롤바 보이기
    });
});
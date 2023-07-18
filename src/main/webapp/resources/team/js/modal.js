$(function(){
    $("#modal").hide();
    $(".heyheyhey").hide();
    $(".yoyoyo").hide();



    $("#a").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".heyheyhey").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(){
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".heyheyhey").fadeOut();
    });


    $("#b").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".yoyoyo").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".yoyoyo").fadeOut();
    });





});
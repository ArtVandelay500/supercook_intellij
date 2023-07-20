$(function(){
    $("#modal").hide();
    $(".heyheyhey").hide();
    $(".modalRecommend").hide();
    $(".modalReport").hide();
    $(".modalBuild").hide();



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
            $(".modalRecommend").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalRecommend").fadeOut();
    });


    $("#c").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".modalReport").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalReport").fadeOut();
    });



    $("#buildParty").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".modalBuild").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalBuild").fadeOut();
    });


    $("#partyInfo").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".modalBuild").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalBuild").fadeOut();
    });










});
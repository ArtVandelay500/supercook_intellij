$(function(){
    $("#modal").hide();
    $(".modalWindow").hide();

    $("#modalBtn").on("click",function(){
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
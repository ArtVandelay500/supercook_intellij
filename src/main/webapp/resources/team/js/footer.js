$(function(){
    $(".hongg").hide();
    $(".songg").hide();
    $(".leee").hide();
    // $(".leee").hide();

    // 홍현욱
    $(".hong").on("click",function(){
        // all indented li reset
        $(this).siblings("a").css({
            letterSpacing : "-1px",
            color: "black"
        });
        // if clicked, clicked li indented
        $(this).css({
            letterSpacing : "0px",
            color:"rgba(26, 103, 26, 0.95)",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".personalPrj").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".hongg").stop().fadeIn();
                });
            }
        });

    });
    // 홍현욱

    // 송재윤
    $(".song").on("click",function(){
        // all indented li reset
        $(this).siblings("a").css({
            letterSpacing : "-1px",
            color: "black"
        });
        // if clicked, clicked li indented
        $(this).css({
            letterSpacing : "0px",
            color:"rgba(26, 103, 26, 0.95)",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".personalPrj").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".songg").stop().fadeIn();
                });
            }
        });

    });
    // 송재윤

    // 이승민
    $(".lee").on("click",function(){
        // all indented li reset
        $(this).siblings("a").css({
            letterSpacing : "-1px",
            color: "black"
        });
        // if clicked, clicked li indented
        $(this).css({
            letterSpacing : "0px",
            color:"rgba(26, 103, 26, 0.95)",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".personalPrj").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".leee").stop().fadeIn();
                });
            }
        });

    });
    // 이승민


}); //jQuery function closing tag
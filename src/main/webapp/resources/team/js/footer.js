$(function(){
    $("#hongg").hide();
    // $(".leee").hide();


    $("#hong").on("mouseenter",function(){
        // all indented li reset
        $(this).parent("div").siblings("a").css({
            letterSpacing : "-1px",
        });
        // if clicked, clicked li indented
        $(this).css({
            letterSpacing : "0px",
            color:"red",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".personalPrj").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $("#hongg").fadeIn();
                });
            }
        });

    });
});
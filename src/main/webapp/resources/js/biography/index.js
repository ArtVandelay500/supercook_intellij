$(function(){
    // setting
    // setting
    // setting
    // setting
    $(".section_projects").hide("slow");
    $(".section_contact").hide("slow");
    // home li indented
    $(".btn_home").css({
        marginLeft : "10px",
        letterSpacing : "-1px",
    });

    $(".btn_projects").on("click",function(){
        // all indented li reset
        // the reason why using css instead of animate is because i have already used transition on this element. and if I animate it, they collide.
        $(this).parent("li").siblings("li").find("a").css({
            marginLeft : "0px",
            letterSpacing : "-3px",
        });
        // if clicked, clicked li indented
        $(this).css({
            marginLeft : "10px",
            letterSpacing : "-1px",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".main_container").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".section_projects").fadeIn();
                });
            }
        });


    });
    $(".btn_contact").on("click",function(){
        // all indented li reset
        $(this).parent("li").siblings("li").find("a").css({
            marginLeft : "0px",
            letterSpacing : "-3px",
        });
        // if clicked, clicked li indented
        $(this).css({
            marginLeft : "10px",
            letterSpacing : "-1px",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".main_container").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".section_contact").fadeIn();
                });
            }
        });

    });

    $(".btn_home").on("click",function(){
        // all indented li reset
        $(this).parent("li").siblings("li").find("a").css({
            marginLeft : "0px",
            letterSpacing : "-3px",
        });
        // if clicked, clicked li indented
        $(this).css({
            marginLeft : "10px",
            letterSpacing : "-1px",
        });
        // if any of each sections inside of the "main container" is currently opened, close it
        $(".main_container").children("div").each(function(index,item){
            if($(item).is(":visible")){
                $(this).fadeOut(function(){
                    // and open the clicked section
                    $(".section_index").fadeIn();
                });
            }
        });
    });
});
$(function(){
    // setting
    // setting
    // setting
    // setting
    $(".section_index").hide("slow");
    $(".section_contact").hide("slow");
    // home li indented
    $(".btn_projects").css({
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

    // LIGHT / DARK MODE
    // LIGHT / DARK MODE
    const modes = $(".mode").children("div");
    modes.children("div:first-child").hasClass("light");
    modes.children("div:last-child").hasClass("darkout");
    $(".animation_border").removeClass("white");
    modes.on("click",function(){
      $(this).siblings("div").css({
          letterSpacing:"-2px",
      });
      $(this).css({
          letterSpacing:"0",
      });
      if($(this).attr("id") == "light"){
          $(".container").css({background:"white"});
          $(".animation_border").removeClass("white");
          $()
          $("#light").removeClass("lightout");
          $("#light").addClass("light");
          $("#dark").removeClass("dark");
          $("#dark").addClass("darkout");
          $("*").css({color:"black"});
      }else{
          $(".container").css({background:"black"});
          $(".animation_border").addClass("white");
          $("#light").removeClass("light");
          $("#light").addClass("lightout");
          $("#dark").removeClass("darkout");
          $("#dark").addClass("dark");
          $("*").css({color:"white"});
      }




    });





});
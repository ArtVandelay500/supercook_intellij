$(function(){

    const dropdown = $(".userMenu");
    const input = $(".question");
    const profile = $("#headerProfile");
    const goTo = $(".goTo");
    const logOut = $(".logOut");
    $(".userMenu").css({
        transition:"none",
    });


    //setting
    //setting
    dropdown.hide();
    //setting
    //setting
    profile.on("click",function(){
        dropdown.css({
            transition:"none",
        });
        dropdown.fadeToggle();
    });


    input.on("focus", function() {
        console.log("heyy");
        $("#uploadImgProfilePreview").css({
            width: "70px",
            height: "70px",
            opacity: .5
        })
        $(".userMenu").css({
            transition:"all .3s ease-in-out",
            width: "100px",
            height:"40px",
        });

        goTo.css({
            opacity:".5"
        })
        logOut.css({
            opacity:".5"
        })
    });


    input.on("blur", function(){
        console.log("heyyou");
        $("#uploadImgProfilePreview").css({
            width : "80px",
            height : "80px",
            opacity: 1
        })
        $(".userMenu").css({
            transition:"all .3s ease-in-out",
            width: "125px",
            height:"50px",
        });

        goTo.css({
            opacity:"1"
        })
        logOut.css({
            opacity:"1"
        })
    });



    //사용자 설정창과 레시피정보창 컨트롤 js
    //사용자 설정창과 레시피정보창 컨트롤 js

    /*SETTING */
    /*SETTING */
    $(".userInfoBox").hide();
    $(".goTo").on("click",function(){
        $(".resultBox").fadeOut();
        $(".userInfoBox").fadeIn();
    });
    /*SETTING */
    /*SETTING */

    //사용자 설정창과 레시피정보창 컨트롤 js
    //사용자 설정창과 레시피정보창 컨트롤 js






});
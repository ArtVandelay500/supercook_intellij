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
    var isAnimating = false; // Flag to prevent double animation

    $("#userGear").on("click", function() {
        if (!isAnimating && !$(".userInfoBox").is(":visible")) {
            isAnimating = true;

            console.log("this is working as I intended");
            $(".result").fadeOut();
            $(".resultCnt").fadeOut();

            setTimeout(function() {
                $(".resultCnt").find("h2").text("프로필 설정");
            }, 350);

            $(".userInfoBox").delay(500).fadeIn(function() {
                isAnimating = false; // Animation is complete, reset the flag
            });
            $(".resultCnt").fadeIn(function() {
                isAnimating = false; // Animation is complete, reset the flag
            });
        }
    });

    $(".logoBox, #userSrc").on("click", function() {
        if (!isAnimating && !$(".result").is(":visible")) {
            isAnimating = true;

            $(".userInfoBox").fadeOut();
            $(".resultCnt").fadeOut();

            setTimeout(function() {
                $(".resultCnt").find("h2").text("WELCOME TO YUMMY!");
            }, 350);

            $(".result").delay(500).fadeIn(function() {
                isAnimating = false; // Animation is complete, reset the flag
            });
            $(".resultCnt").fadeIn(function() {
                isAnimating = false; // Animation is complete, reset the flag
            });
        }
    });


    //사용자 설정창과 레시피정보창 컨트롤 js
    //사용자 설정창과 레시피정보창 컨트롤 js






});
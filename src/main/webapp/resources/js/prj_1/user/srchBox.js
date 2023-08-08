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
            opacity: .8
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






});
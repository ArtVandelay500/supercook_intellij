$(function(){


    const curtain = $(".chatCurtain");
    const frame = $(".chatFrame");
    const openBtn = $("#oBtn");
    const closeBtn = $("#xBtn");
    const chatBtn = $("#chat");
    curtain.hide();
    frame.hide();
    closeBtn.hide();
    chatBtn.removeClass("closeColor");
    $("#chat").on("click",function(){
        curtain.fadeToggle();
        frame.fadeToggle();
        openBtn.fadeToggle();
        closeBtn.fadeToggle();
        chatBtn.toggleClass("closeColor");

        var chatRecord = $(".chatRecord")[0];
        chatRecord.scrollTo({
            top: chatRecord.scrollHeight,
            block: 'end ' // Set behavior to 'smooth' for smooth scrolling
        });
    });

    $("#chat2").on("click",function(){
        alert("로그인을 하시면 채팅을 즐기실 수 있습니다!");
    });


});


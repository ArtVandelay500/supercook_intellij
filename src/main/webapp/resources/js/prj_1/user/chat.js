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
    });
});


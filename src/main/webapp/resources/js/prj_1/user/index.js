$(function(){
// $(".imgBox").hide();
$(".imgBoxHover").hide();

$("input").on("mouseenter mouseleave",function(){
    $(this).siblings(".imgBoxHover").stop().fadeToggle();
});


});//END OF THIS SCRIPT
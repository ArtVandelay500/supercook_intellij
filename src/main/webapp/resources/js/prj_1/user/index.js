$(function(){
// $(".imgBox").hide();
$(".imgBoxHover").hide();

$("input").on("mouseenter mouseleave",function(){
    $(this).siblings(".imgBoxHover").stop().fadeToggle();
});

// <div className="imgBoxHover"><img src="/resources/img/prj_1/user/pepperoni-pizza.jpg"/></div>

});//END OF THIS SCRIPT
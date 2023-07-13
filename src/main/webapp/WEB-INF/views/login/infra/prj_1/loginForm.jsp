<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/resources/css/prj_1/login/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://cdn.jsdel¬øivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/prj_1/login/login.js"></script>
    <script src="/resources/js/validation/validation.js"></script>
    <title>Sign Up</title>
</head>
<body>
<div class="loginContainer">
    <div class="signup-container">
        <div class="signup-header">회원가입</div>
        <form name="saveForm" class="welcome-form">
            <label id="id-label" for="user-id">ID: </label>
            <input
                    oninput="checkId()"
                    required
                    name="email"
                    class="signupId"
                    id="user-id"
                    type="text"
                    placeholder="사용할 아이디를 입력해주세요"
            />
            <span class="id_ok" >사용가능한 아이디입니다</span>
            <span class="id_already">중복된 아이디입니다</span>
            <label id="pwd-label" for="user-pwd">PWD: </label>
            <input
                    required
                    name="pwd"
                    id="user-pwd"
                    class="user-pwd_signup"
                    type="password"
                    placeholder="비밀번호를 생성해주세요"
            />
            <label id="repwd-label" for="user-repwd">RE PWD: </label>
            <input
                    required
                    id="user-repwd"
                    type="password"
                    placeholder="비밀번호를 재입력해주세요"
            />
            <div class="btnBox">
                <button id="b1" type="button" class="signup btn form">회원가입</button>
            </div>
        </form>
    </div>
</div>
<script>


        $("#b1").on("click", function(){

            if($("#user-pwd").val() != $("#user-repwd").val()) {

                $("#repwd-label").css({
                    color: "red",
                });
                $("#user-repwd").css({
                    color: "red",
                    animation: "horizontal-shaking .2s 2 ease"
                });
                $("#user-repwd").focus();

                // PASSWORD AND RE-PASSWORD VALIDATION
                // PASSWORD AND RE-PASSWORD VALIDATION
            }else{

                $.ajax({
                    async: true
                    ,cache: false
                    ,type: "post"
                    /* ,dataType:"json" */
                    ,url: "/idCheck"
                    /* ,data : $("#formLogin").serialize() */
                    ,data : {
                        "email" : $("input[name=email]").val()
                    }
                    ,success: function(response) {
                        alert("success");
                        if(response.rt == "available") {
                            alert("사용가능한 이이디입니다");
                            location.href = "/login";
                        } else {
                            alert("중복된 아이디입니다");
                        }
                    }

            ,error : function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });

            } //else tag
            // PASSWORD AND RE-PASSWORD VALIDATION
            // PASSWORD AND RE-PASSWORD VALIDATION

    }); //click button tag


        //
        // $("#b1").on("click",function(e){
        //     e.preventDefault();
        //     if($("#user-pwd").val() != $("#user-repwd").val()){
        //
        //         $("#repwd-label").css({
        //             color: "red",
        //         });
        //         $("#user-repwd").css({
        //             color: "red",
        //             animation : "horizontal-shaking .2s 2 ease"
        //         });
        //         $("#user-repwd").focus();
        //     }else{
        //         $("form[name=saveForm]").attr("action","/member/save").submit();
        //
        //     }
        // });
        //


</script>
</body>
</html>
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
    <title>Please Log In</title>
</head>
<body>
    <div class="loginContainer">
        <div class="welcome-container">
            <div style="width:50%" class="welcome-header"><img src="/resources/img/prj_1/admin/img.png"></div>
            <form id="loginForm" class="welcome-form" action="" >
                <label id="id-label" for="user-id">ID: </label>
                <input
                        value = "adminXX@gmail.com"
                        required
                        id="user-id"
                        type="text"
                        name="email"
                        placeholder="아이디를 입력해주세요"
                />
                <label id="pwd-label" for="user-pwd">PWD: </label>
                <input
                        value = "password"
                        required
                        minlength="5"
                        maxlength="15"
                        id="user-pwd"
                        type="password"
                        name="pwd"
                        placeholder="비밀번호를 입력해주세요"
                />
                <span class="login_no">아이디 혹은 비밀번호가 일치하지 않습니다.</span>
                <div class="btnBox">
                    <button id="loginAdmin" type="button" class="login btn">로그인</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        $("#loginAdmin").on("click", function(e) {
            var form = $("#loginForm");

            if (validationNull(form)) {
                $.ajax({
                    async: true,
                    cache: false,
                    type: "post",
                    url: "/member/login",
                    data: {
                        "email": form.find("input[name=email]").val(),
                        "pwd": form.find("input[name=pwd]").val()
                    },
                    success: function(response) {
                        if (response.rt == "success") {

                            location.href = "/indexAdminView";
                        } else {
                            $('.login_no').css("opacity", "1");
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                    }
                }); //AJAX tag
            }
        });



    </script>
</body>
</html>
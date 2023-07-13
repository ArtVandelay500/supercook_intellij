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
            <div class="welcome-header"><img src="/resources/img/prj_1/admin/yummy_white.png"></div>
            <form name="loginForm" class="welcome-form" action="/member/login" method="post">
                <label id="id-label" for="user-id">ID: </label>
                <input
                        required
                        id="user-id"
                        type="text"
                        placeholder="아이디를 입력해주세요"
                />
                <label id="pwd-label" for="user-pwd">PWD: </label>
                <input
                        required
                        minlength="5"
                        maxlength="15"
                        id="user-pwd"
                        type="password"
                        placeholder="비밀번호를 입력해주세요"
                />
                <div class="btnBox">
                    <button id="b2" onclick="location.href='/indexUserView'" class="login btn">로그인</button>
                    <button id="b1" onclick="location.href='/loginForm'" class="signup btn">회원가입</button>
                </div>
            </form>
        </div>
    </div>
    <script>

    </script>
</body>
</html>
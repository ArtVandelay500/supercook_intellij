<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import = "java.net.URLEncoder" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<%--deleting cache--%>
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
<%--deleting cache--%>
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
            <form id="loginForm" class="welcome-form">
                <label id="id-label" for="user-id">ID: </label>
                <input
                        id="user-id"
                        type="text"
                        name="email"
                        placeholder="아이디를 입력해주세요"
                        value="adminXX@gmail.com"
                />
                <span class="id_already">아이디를 입력해주세요</span>
                <label id="pwd-label" for="user-pwd">PWD: </label>
                <input
                        id="user-pwd"
                        name="pwd"
                        type="password"
                        value="password"
                        placeholder="비밀번호를 입력해주세요"
                />
                <span class="login_no">아이디 혹은 비밀번호가 일치하지 않습니다.</span>
                <div class="btnBox">
                    <button id="login" type="button" class="login btn">로그인</button>
                    <button id="b1" type="button" onclick="location.href='/loginForm'" class="signup btn">회원가입</button>
                </div>
<%--                <a style="align-self: center; margin-top: 10px" href="https://kauth.kakao.com/oauth/authorize?client_id=adca34fb40e1d2e79631a91ac4c1b21f&redirect_uri=http://localhost:82/login/kakao&response_type=code">--%>
                <a style="align-self: center; margin-top: 10px" href="https://kauth.kakao.com/oauth/authorize?client_id=adca34fb40e1d2e79631a91ac4c1b21f&redirect_uri=http://43.201.9.43/login/kakao&response_type=code">
                    <img src="/resources/img/prj_1/user/kakao_login_medium_narrow.png">
                </a>
            </form>

        </div>
    </div>
</body>
</html>
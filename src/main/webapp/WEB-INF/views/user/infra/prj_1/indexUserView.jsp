<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Yummy!</title>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="/resources/css/prj_1/user/style.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/prj_1/user/index.js"></script>

</head>
<body>
<div class="container">
    <div class="border_box">
        <div class="srch_box">
            <form name-="search">
                <input type="text" name="name" class="question" id="nme" required autocomplete="off" />
                <label for="nme"><span>What's your name?</span></label>
            </form>

        </div>
        <div class="recipe_box">
            <div class="resultInfo">
                <div class="logoBox">
                    <img src="/resources/img/prj_1/user/yummy_white.png" />
                </div>
            </div>
            <div class="resultBox">
                <div class="result">

                </div>
            </div>
            <%--ACCORDIAN--%>
            <%--ACCORDIAN--%>


            <%--ACCORDIAN--%>
            <%--ACCORDIAN--%>
        </div>
    </div>
</div>
</body>
</html>
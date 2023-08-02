<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Yummy!</title>
    <link rel="stylesheet" href="/resources/css/prj_1/user/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/prj_1/user/index.js"></script>
</head>
<body>
<div class="hugeContainer">
    <div class="border_box">
        <div class="srch_box">
            <form name-="search">
                <input type="text" name="name" class="question" id="nme" required autocomplete="off" />
                <label for="nme"><span>Are You Hungry?</span></label>
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
                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>
                        <ul>
                            <li>
                                <input type="checkbox" checked>
                                <div class="imgBoxHover"><img src="/resources/img/prj_1/user/pepperoni-pizza.jpg"/></div>
                                <i></i>
                                <h2>페퍼로니 피자</h2>
                                <div class="imgBox">
                                    <img src="/resources/img/prj_1/user/pepperoni-pizza.jpg"/>
                                </div>
                            </li>

                            <li>
                                <input type="checkbox" checked>
                                <i></i>
                                <h2>부대찌개</h2>
                                <p>Using the sibling and checked selectors, we can determine the styling of sibling elements based on the checked state of the checkbox input element. One use, as demonstrated here, is an entirely CSS and HTML accordion element. Media queries are used to make the element responsive to different screen sizes.</p>
                            </li>
                            <li>
                                <input type="checkbox" checked>
                                <i></i>
                                <h2>비프 부르기뇽</h2>
                                <p>By making the open state default for when :checked isn't detected, we can make this system accessable for browsers that don't recognize :checked. The fallback is simply an open accordion. The accordion can be manipulated with Javascript (if needed) by changing the "checked" property of the input element.</p>
                            </li>
                        </ul>

                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
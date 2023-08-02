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
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">--%>

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
                <label for="nme"><span>Are you hungry?</span></label>
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
                        <div class="accordionItem">
                            <h2 class="accordionHeader" id="headingOne">
                                <button class="accordionBtn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Accordion Item #1
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                                </div>
                            </div>
                        </div>

                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
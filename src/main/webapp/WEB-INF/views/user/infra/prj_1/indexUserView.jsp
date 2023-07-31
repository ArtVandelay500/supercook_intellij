<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/resources/css/prj_1/user/style.css">
    <title>Yummy!</title>
</head>
<body>
<div class="container">
    <div class="border_box">
        <div class="srch_box sub_container"></div>
        <div class="recipe_box sub_container">
            <%--ACCORDIAN--%>
            <%--ACCORDIAN--%>

                <div class="wrap">

                    <!--다섯번째 메뉴와 내용-->
                    <!--버튼 요소-->
                    <label for="menu1" class="label e">
                        <span class="rotate">
                          <p>MENU 5</p>
                        </span>
                    </label>
                    <!--아코디언 기능구현 핵심 요소 : 실제기능을 하는 input, CSS로 가려놓았음-->
                    <input type="radio" name="navigation" id="menu1" class="button">
                    <!--콘텐츠가 보여질 요소 : 위의 input이 체크 되었을 때 .contents를 선택하여 높이가 높아지도록 조정함 (선택자 : input[radio]:checked + .contents) -->
                    <div class="contents">
                        <div class="inner">
                            <div class="description">
                                <h3>TITLE 5</h3>
                                <p>다람쥐 헌 챗바퀴에 타고파.</p>
                            </div>
                        </div>
                    </div>

                    <!--이하의 메뉴와 내용 역시 위와 구조 동일함-->
                    <!--네번째 메뉴와 내용-->
                    <label for="menu2" class="label d">
                        <span class="rotate">
                          <p>MENU 4</p>
                        </span>
                    </label>
                    <input type="radio" name="navigation" id="menu2" class="button">
                    <div class="contents">
                        <div class="inner">
                            <div class="description">
                                <h3>TITLE 4</h3>
                                <p>다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파.</p>
                            </div>
                        </div>
                    </div>

                    <!--세번째 메뉴와 내용-->
                    <label for="menu3" class="label c">
                        <span class="rotate">
                          <p>MENU 3</p>
                        </span>
                    </label>
                    <input type="radio" name="navigation" id="menu3" class="button">
                    <div class="contents">
                        <div class="inner">
                            <div class="description">
                                <h3>TITLE 3</h3>
                                <p>다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파.</p>
                            </div>
                        </div>
                    </div>
                    <!--두번째 메뉴와 내용-->
                    <label for="menu4" class="label b">
                        <span class="rotate">
                          <p>MENU 2</p>
                        </span>
                    </label>
                    <input type="radio" name="navigation" id="menu4" class="button">
                    <div class="contents">
                        <div class="inner">
                            <div class="description">
                                <h3>TITLE 2</h3>
                                <p>다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파.</p>
                            </div>
                        </div>
                    </div>

                    <!--첫번째 메뉴와 내용-->
                    <label for="menu5" class="label a">
                        <span class="rotate">
                          <p>MENU 1</p>
                        </span>
                    </label>
                    <input type="radio" name="navigation" id="menu5" class="button">
                    <div class="contents">
                        <div class="inner">
                            <div class="description">
                                <h3>TITLE 1</h3>
                                <p>다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파. 다람쥐 헌 챗바퀴에 타고파.</p>
                            </div>
                        </div>
                    </div>
                    <!--닫기 버튼-->
                    <input type="radio" name="navigation" id="menu6" class="button close" checked>
                    <label for="menu6" class="closer">
                        X
                    </label>
                </div>
            <%--ACCORDIAN--%>
            <%--ACCORDIAN--%>
        </div>
    </div>
</div>
</body>
</html>
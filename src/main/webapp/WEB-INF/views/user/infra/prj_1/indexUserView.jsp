<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="en">
<%@include file="includes/headUser.jsp"%>
<body>
<div class="hugeContainer">
    <div class="border_box">
        <%--검색 부분--%>
        <%--검색 부분--%>
        <div class="srch_box">
            <form name-="search">
                <input type="text" style="line-height: 0;  font-family: 'EF_cucumbersalad';" name="name" class="question" id="nme" required autocomplete="off" />
                <label for="nme"><span style="font-family: 'EF_cucumbersalad';">Are You Hungry?</span></label>
            </form>
        </div>
        <%--검색 부분--%>
        <%--검색 부분--%>

        <%--레시피 검색 결과 부분--%>
        <%--레시피 검색 결과 부분--%>
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

                        <%--아이템 1--%>
                        <%--아이템 1--%>
                        <%--아이템 1--%>
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                        부대찌개
                                    </button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <%--레시피 내용 시작--%>
                                <%--레시피 내용 시작--%>
                                    <div class="accordion-body">
                                        <div class="recipeBody">
                                            <div class="recipeHeader">
                                                <div class="recipeHeader_imgBox"><img src="/resources/img/prj_1/user/부대찌개.jpeg"></div>
                                                <h4>밤 12시가 되면 이따금 생각나는 보글보글 매콤한 백종원의 부대찌개 레시피</h4>

                                                <%--recipeHeader_misc--%>
                                                <%--recipeHeader_misc--%>
                                                <div class="recipeHeader_misc">
                                                    <div class="recipeHeader_misc-item recipeHeader_misc-serving">
                                                        <span class="material-symbols-outlined">group</span>
                                                        <span>3인분 이상</span>
                                                    </div>
                                                    <div class="recipeHeader_misc-item recipeHeader_misc-prepTime">
                                                        <span class="material-symbols-outlined">alarm</span>
                                                        <span>60분 이내</span>
                                                    </div>
                                                    <div class="recipeHeader_misc-item recipeHeader_misc-difficulty">
                                                        <span class="material-symbols-outlined">hotel_class</span>
                                                        <span>중급 이상</span>
                                                    </div>
                                                </div>
                                                <%--recipeHeader_misc--%>
                                                <%--recipeHeader_misc--%>
                                            </div>


                                        </div>
                                    </div>
                                <%--레시피 내용 끝--%>
                                <%--레시피 내용 끝--%>
                                </div>
                            </div>
                            <%--아이템 1--%>
                            <%--아이템 1--%>
                            <%--아이템 1--%>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                        Accordion Item #2
                                    </button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                        Accordion Item #3
                                    </button>
                                </h2>
                                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                                </div>
                            </div>
                        </div>

                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>



                </div> <%--Result--%>
            </div> <%--ResultBox--%>
        </div> <%--RecipeBox--%>

        <%--레시피 검색 결과 부분 끝--%>
        <%--레시피 검색 결과 부분 끝--%>

    </div> <%--BorderBox--%>
</div> <%--hugeContainer--%>
</body>
</html>
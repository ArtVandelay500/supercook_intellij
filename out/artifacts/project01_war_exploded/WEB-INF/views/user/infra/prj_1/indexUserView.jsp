<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
<%@include file="includes/headUser.jsp"%>
<body>
<div class="hugeContainer">
    <div class="chatCurtain"></div>

    <%@include file="includes/chat.jsp"%>
    <div class="border_box">
        <%--검색 부분--%>
        <%--검색 부분--%>
        <div class="srch_box">
            <c:choose>
                <c:when test="${not empty sessionId }">
                    <%--Profile Picture--%>
                    <%--Profile Picture--%>


                    <div class="dropDown">
                        <a id="headerProfile" href="#">
                            <c:choose>
                                <c:when test="${not empty sessionProfilePath}">
                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                         id="uploadImgProfilePreview"
                                         src="<c:out value="${sessionProfilePath}"/><c:out value="${sessionProfileName}"/>"
                                         class="rounded-circle d-block" width="80" height="80"
                                    />
                                </c:when>
                                <c:otherwise>
                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                         id="uploadImgProfilePreview"
                                         src="/resources/img/prj_1/admin/defaultProfile.png"
                                         class="rounded-circle d-block" width="75" height="75"
                                    />
                                </c:otherwise>
                            </c:choose>

                        </a>
                        <div class="userMenu">
                            <div class="goTo"><span class="material-symbols-outlined">settings</span></div>
                            <div onclick="logOutUser()" class="logOut"><span class="material-symbols-outlined">logout</span>
                            </div>
                        </div>
                    </div>


                </c:when>
                <c:otherwise>
                    <div style="cursor: pointer;" onclick="location.href='/login'" class="outBtn">
                        <span class="material-symbols-outlined">login</span>
                    </div>

                </c:otherwise>
            </c:choose>

            <form name="search">
                <input type="text" style="line-height: 0;  font-family: 'EF_cucumbersalad';" name="shKey" class="question" id="nme" required autocomplete="off" />
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
                    <img src="/resources/img/prj_1/user/newYummy.png" />
                </div>
            </div>

            <div class="resultBox">
                <div class="resultCnt">
                    <h2>WELCOME TO YUMMY!</h2>
                </div>
                <div class="result">
                <%--LOADING SPINNER--%>
                    <div class="loader"></div>
                <%--LOADING SPINNER--%>
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>

                        <%--아이템 1--%>
                        <%--아이템 1--%>
                        <%--아이템 1--%>
                         <div class="accordion-item">
                                <h2 class="accordion-header" id="1">
                                    <button class="accordion-button collapsed"
                                            type="button"
                                            data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseOne"
                                            aria-expanded="false"
                                            aria-controls="flush-collapseOne">
                                        부대찌개
                                    </button>
                                </h2>
                                <div id="0a" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <%--레시피 내용 시작--%>
                                <%--레시피 내용 시작--%>
                                    <div class="accordion-body">
                                        <div class="recipeBody">
                                            <%--recipeBody_header--%>
                                            <%--recipeBody_header--%>
                                            <div class="recipeBody_header">
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
                                            <%--recipeBody_header--%>
                                            <%--recipeBody_header--%>

                                            <%--recipeBody_body--%>
                                            <%--recipeBody_body--%>
                                            <div class="recipeBody_body">
                                                <div class="ingredientList_head">
                                                    <h4>- 재료</h4>
                                                </div>
                                                <div class="recipeBody_body-ingredientList">
                                                    <div class="ingredientList_body">
                                                        <h6>[ 기본재료 ]</h6>
                                                        <ul>
                                                            <li>
                                                                <span>스팸</span>
                                                                <span>1캔</span>
                                                            </li>
                                                            <li>라면사리</li>
                                                            <li>두부</li>
                                                        </ul>
                                                    </div>
                                                    <div class="ingredientList_body">
                                                        <h6>[ 양념재료 ]</h6>
                                                        <ul>
                                                            <li>고추장</li>
                                                            <li>설탕</li>
                                                            <li>다시다</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="ingredientList_head">
                                                    <h4>- 조리도구</h4>
                                                </div>
                                                <div class="recipeBody_body-cookingToolList">
                                                    <div class="cookingToolList_body">
                                                        <ul>
                                                            <li>냄비</li>
                                                            <li>국자</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--recipeBody_body--%>
                                            <%--recipeBody_body--%>

                                            <%--recipeBody_Footer--%>
                                            <%--recipeBody_Footer--%>
                                            <div class="recipeBody_footer">
                                                <div class="urlBtn">
                                                    <button type="button" onclick=location.href="https://www.naver.com" class="btn btn-dark btn-lg">레시피 보기</button>
                                                </div>
                                            </div>
                                            <%--recipeBody_Footer--%>
                                            <%--recipeBody_Footer--%>
                                        </div>
                                    </div>
                                </div>
                            <%--레시피 내용 끝--%>
                            <%--레시피 내용 끝--%>
                            </div>
                        <%--아이템 1--%>
                        <%--아이템 1--%>
                        <%--아이템 1--%>





                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>
                    </div> <%--end of accordion flush--%>
                </div> <%--Result--%>
            </div> <%--ResultBox--%>
        </div> <%--RecipeBox--%>

        <%--레시피 검색 결과 부분 끝--%>
        <%--레시피 검색 결과 부분 끝--%>


    </div> <%--BorderBox--%>
</div> <%--hugeContainer--%>
            <%--임시 채팅 div--%>
            <%--임시 채팅 div--%>
            <div style="font-weight: 900; color: white; font-family: 'neurimboGothicRegular'; display: flex; align-items: center; justify-content: center; position: fixed; z-index: 1001; bottom: 10px; right: 10px; width: 100px; height: 30px; background-color: coral; cursor: pointer; border-radius: 10px;" id="chat">
                TALK
            </div>
            <%--임시 채팅 div--%>
            <%--임시 채팅 div--%>
</body>
</html>
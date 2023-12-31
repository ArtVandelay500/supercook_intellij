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
                                <c:when test="${not empty userProfile}">
                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                         id="uploadImgProfilePreview1"
                                         src="${userProfile}"
                                         class="rounded-circle d-block" width="80" height="80"
                                    />
                                </c:when>
                                <c:otherwise>
                                    <c:choose>
                                        <c:when test="${not empty sessionProfilePath}">
                                            <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                                 id="uploadImgProfilePreview1"
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
                                </c:otherwise>
                            </c:choose>


                        </a>
                        <div class="userMenu">
                            <div id="userGear" class="goTo"><span class="material-symbols-outlined">settings</span></div>
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

            <form id="userSrc" name="search">
                <input type="text" style="line-height: 0;  font-family: 'EF_cucumbersalad';" name="shKey" class="question" id="nme" required autocomplete="off" />
                <label for="nme"><span id="userSrcLabel" style="font-family: 'EF_cucumbersalad';">재료/음식명을 검색해주세요</span></label>
            </form>

            <%--임시 채팅 div--%>
            <%--임시 채팅 div--%>
            <c:choose>
                <c:when test="${not empty sessionId}">
                    <div id="chat">
                        <i id="oBtn" class="fa-regular fa-paper-plane"></i>
                        <i id="xBtn" class="fa-solid fa-xmark"></i>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="chat2">
                        <i id="oBtn" class="fa-regular fa-paper-plane"></i>
                        <i id="xBtn" class="fa-solid fa-xmark"></i>
                    </div>
                </c:otherwise>
            </c:choose>

            <%--임시 채팅 div--%>
            <%--임시 채팅 div--%>
        </div>
        <%--검색 부분--%>
        <%--검색 부분--%>

        <%--레시피 검색 결과 부분--%>
        <%--레시피 검색 결과 부분--%>
        <div class="recipe_box">
            <div class="resultInfo">
                <div class="logoBox">
                    <img onclick=location.href="/indexUserView" src="/resources/img/prj_1/user/newYummy.png" />
                </div>
            </div>

            <div class="resultBox">
                <div class="resultCnt">
                    <h2 style="cursor:default">WELCOME TO YUMMY!</h2>

                </div>
                <div class="result">
                    <p style="transition: none; margin: 0" id="available">현재 검색 가능한 레시피: 부대찌개, 스파게티, 당근라페, 된장찌개<br><br>*각 레시피의 재료로도 검색이 가능합니다!</p>

                <%--LOADING SPINNER--%>
                    <div class="loader"></div>
                <%--LOADING SPINNER--%>
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>

<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>
<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>
<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>
<%--                         <div class="accordion-item">--%>
<%--                                <h2 class="accordion-header" id="1">--%>
<%--                                    <button class="accordion-button collapsed"--%>
<%--                                            type="button"--%>
<%--                                            data-bs-toggle="collapse"--%>
<%--                                            data-bs-target="#flush-collapseOne"--%>
<%--                                            aria-expanded="false"--%>
<%--                                            aria-controls="flush-collapseOne">--%>
<%--                                        부대찌개--%>
<%--                                    </button>--%>
<%--                                </h2>--%>
<%--                                <div id="0a" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">--%>
<%--                                &lt;%&ndash;레시피 내용 시작&ndash;%&gt;--%>
<%--                                &lt;%&ndash;레시피 내용 시작&ndash;%&gt;--%>
<%--                                    <div class="accordion-body">--%>
<%--                                        <div class="recipeBody">--%>
<%--                                            &lt;%&ndash;recipeBody_header&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_header&ndash;%&gt;--%>
<%--                                            <div class="recipeBody_header">--%>
<%--                                                <div class="recipeHeader_imgBox"><img src="/resources/img/prj_1/user/부대찌개.jpeg"></div>--%>
<%--                                                <h4>밤 12시가 되면 이따금 생각나는 보글보글 매콤한 백종원의 부대찌개 레시피</h4>--%>

<%--                                                &lt;%&ndash;recipeHeader_misc&ndash;%&gt;--%>
<%--                                                &lt;%&ndash;recipeHeader_misc&ndash;%&gt;--%>
<%--                                                <div class="recipeHeader_misc">--%>
<%--                                                    <div class="recipeHeader_misc-item recipeHeader_misc-serving">--%>
<%--                                                        <span class="material-symbols-outlined">group</span>--%>
<%--                                                        <span>3인분 이상</span>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="recipeHeader_misc-item recipeHeader_misc-prepTime">--%>
<%--                                                        <span class="material-symbols-outlined">alarm</span>--%>
<%--                                                        <span>60분 이내</span>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="recipeHeader_misc-item recipeHeader_misc-difficulty">--%>
<%--                                                        <span class="material-symbols-outlined">hotel_class</span>--%>
<%--                                                        <span>중급 이상</span>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                &lt;%&ndash;recipeHeader_misc&ndash;%&gt;--%>
<%--                                                &lt;%&ndash;recipeHeader_misc&ndash;%&gt;--%>
<%--                                            </div>--%>
<%--                                            &lt;%&ndash;recipeBody_header&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_header&ndash;%&gt;--%>

<%--                                            &lt;%&ndash;recipeBody_body&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_body&ndash;%&gt;--%>
<%--                                            <div class="recipeBody_body">--%>
<%--                                                <div class="ingredientList_head">--%>
<%--                                                    <h4>- 재료</h4>--%>
<%--                                                </div>--%>
<%--                                                <div class="recipeBody_body-ingredientList">--%>
<%--                                                    <div class="ingredientList_body">--%>
<%--                                                        <h6>[ 기본재료 ]</h6>--%>
<%--                                                        <ul>--%>
<%--                                                            <li>--%>
<%--                                                                <span>스팸</span>--%>
<%--                                                                <span>1캔</span>--%>
<%--                                                            </li>--%>
<%--                                                            <li>라면사리</li>--%>
<%--                                                            <li>두부</li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="ingredientList_body">--%>
<%--                                                        <h6>[ 양념재료 ]</h6>--%>
<%--                                                        <ul>--%>
<%--                                                            <li>고추장</li>--%>
<%--                                                            <li>설탕</li>--%>
<%--                                                            <li>다시다</li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="ingredientList_head">--%>
<%--                                                    <h4>- 조리도구</h4>--%>
<%--                                                </div>--%>
<%--                                                <div class="recipeBody_body-cookingToolList">--%>
<%--                                                    <div class="cookingToolList_body">--%>
<%--                                                        <ul>--%>
<%--                                                            <li>냄비</li>--%>
<%--                                                            <li>국자</li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            &lt;%&ndash;recipeBody_body&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_body&ndash;%&gt;--%>

<%--                                            &lt;%&ndash;recipeBody_Footer&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_Footer&ndash;%&gt;--%>
<%--                                            <div class="recipeBody_footer">--%>
<%--                                                <div class="urlBtn">--%>
<%--                                                    <button type="button" onclick=location.href="https://www.naver.com" class="btn btn-dark btn-lg">레시피 보기</button>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            &lt;%&ndash;recipeBody_Footer&ndash;%&gt;--%>
<%--                                            &lt;%&ndash;recipeBody_Footer&ndash;%&gt;--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            &lt;%&ndash;레시피 내용 끝&ndash;%&gt;--%>
<%--                            &lt;%&ndash;레시피 내용 끝&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>
<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>
<%--                        &lt;%&ndash;아이템 1&ndash;%&gt;--%>





                    <%--ACCORDIAN--%>
                    <%--ACCORDIAN--%>
                    </div> <%--end of accordion flush--%>
                </div> <%--Result--%>

                <div class="userInfoBox">
                    <form class="row g-4" method="post" autocomplete="off" name="updateForm" enctype="multipart/form-data">
                        <input name="seq" type="hidden" value="<c:out value="${sessionSeq}"/>">
                        <input name="email" type="hidden" value="<c:out value="${sessionId}"/>">
                        <%--USER PROFILE STARTS--%>
                        <%--USER PROFILE STARTS--%>
                        <div class="justify-content-md-center row mb-3 row mb-3">
                            <div style="position: relative" class="col-sm-12 text-center">
                                <c:set var="type" value="1"/>		<!-- #-> -->
                                <c:set var="name" value="uploadImgProfile"/><!-- #-> -->
                                <%--if this is 0, won't update(delete and insert) profile, otherwise maintain status quo--%>
                                <input id="hasFileChangedProfile" type="hidden" name="hasFileChangedProfile" value="0"/><!-- #-> -->

                                <c:choose>
                                    <c:when test="${empty sessionProfilePath}">
                                        <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="GetNy" value="0"/>
                                                <input type="hidden" id="<c:out value="${name}"/>DeleteSeq" name="<c:out value="${name}"/>DeleteSeq" value="<c:out value=""/>"/>
                                                <input type="hidden" id="<c:out value="${name}"/>DeletePathFile" name="<c:out value="${name}"/>DeletePathFile" value="<c:out value="${sessionProfilePath}"/><c:out value="${sessionProfileName}"/>"/>
                                                <img style="object-fit: cover" id="<c:out value="${name}"/>Preview" src="<c:out value="${sessionProfilePath}"/><c:out value="${sessionProfileName}"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
                                                <c:set var="GetNy" value="1"/>
                                        <c:if test="${GetNy eq 0 }">
                                            <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                                <input type="hidden" id="<c:out value="${name}"/>Type" name="<c:out value="${name}"/>Type" value="<c:out value="${type}"/>"/>
                                <input type="hidden" id="<c:out value="${name}"/>MaxNumber" name="<c:out value="${name}"/>MaxNumber" value="0"/>
                                <label for="<c:out value="${name}"/>" class="form-label input-file-button">
                                    <b>
                                        <span onclick="clickForChange()" style="font-weight: 900; font-size: 20px; cursor: pointer; padding: 5px; border-radius: 50%; color: white; background-color: coral; position: absolute; transform: translateX(-80%); bottom:10px;" class="material-symbols-outlined">settings</span>
                                    </b>
                                </label>
                                <input class="form-control form-control-sm" id="<c:out value="${name}"/>" name="<c:out value="${name}"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name}"/>', <c:out value="${type}"/>, 1, 1, 0, 0, 3);">
                            </div>
                        </div>
                        <%--USER PROFILE END--%>
                        <%--USER PROFILE END--%>
                            <div class="row mb-3 justify-content-md-center">
                                <div class="profileBtnBox">
                                    <button class="userUpdateBtn updateBtn btn btn-success btn-lg">★</button>

                                </div>
                            </div>
                    </form>
                </div><%--userInfoBox--%>
            </div> <%--RESULT Box  AND FENCE FOR 'Result' AND 'UserInfoBox'--%>


        </div> <%--RECIPE Box--%>

        <%--레시피 검색 결과 부분 끝--%>
        <%--레시피 검색 결과 부분 끝--%>


    </div> <%--BorderBox--%>
</div> <%--hugeContainer--%>

</body>
</html>
<script>
    //좋아요 버튼 js
    //좋아요 버튼 js


    //좋아요 버튼 js
    //좋아요 버튼 js
    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(){
        alert("변경 후 재로그인 해주세요!");
        $("form[name=updateForm]").attr("action","/userMemberForm/update").submit();
    });

</script>
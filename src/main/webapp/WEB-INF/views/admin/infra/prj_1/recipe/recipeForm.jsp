<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
<%@include file="../includes/head.jsp"%>
<body>
<div>
    <%@include file="../includes/header.jsp"%>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
                <%--FORM CONTENT STARTS FROM HERE!!--%>
                <%--FORM CONTENT STARTS FROM HERE!!--%>

                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <c:choose>
                    <c:when test="${empty item.seq }">
                        <div id="modal"></div>
                        <%@include file="../includes/recipeModal.jsp"%>
                        <div class="mainLabelBox">
                            <h2 class="tableLabel">레시피 추가</h2>
                            <div class="addBox" onclick="location.href='/recipeList/list'">
                                <h3 class="tableSubLabel">레시피 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">

                            <form class="row g-4" name="insertForm">

                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="recipeName" class="form-label">레시피명</label>
                                        <input type="text" class="form-control" id="recipeName" name="recipeName">
                                    </div>
                                    <div class="col-md-8">
                                        <label for="recipeTitle" class="form-label">레시피제목</label>
                                        <input type="text" class="form-control" id="recipeTitle" name="recipeTitle">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-10">
                                        <label for="recipeUrl" class="form-label">레시피 URL</label>
                                        <input type="text" class="form-control" id="recipeUrl" name="recipeUrl">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="recipeSource" class="form-label">레시피 출처명</label>
                                        <input type="text" class="form-control" id="recipeSource" name="recipeSource">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-2">
                                        <label for="recipePrepTime" class="form-label">레시피 소요시간</label>
                                        <input type="text" class="form-control" id="recipePrepTime" name="recipePrepTime">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="formFile" class="form-label">레시피 썸네일</label>
                                        <input class="form-control" type="file" id="formFile">
                                    </div>
                                </div>
                                <%--재료 등록 DIV --%>
                                <%--재료 등록 DIV --%>

                                <div class="container mt-4">
                                    <div class="row justify-content-flex-start">
                                        <div class="col-md-6">
                                            <!-- Bootstrap card to create the box -->
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title">재료함</h5>
                                                    <div class="recipeBox"></div>
                                                    <!-- Bootstrap button inside the box -->
                                                    <button type="button" id="modalBtn" class="btn btn-primary">재료 추가</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--재료 등록 DIV --%>
                                <%--재료 등록 DIV --%>

                                <%--SUBMIT BUTTON--%>
                                <%--SUBMIT BUTTON--%>
                                <div class="col-12 justify-content-md-center">
                                    <button class="insertBtn btn btn-success btn-lg" >생성</button>
                                </div>
                            </form>
                        </div>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>



                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                    </c:when>
                    <c:otherwise>
                        <div class="mainLabelBox">
                            <h2 class="tableLabel">공통코드 수정</h2>
                            <div class="addBox" onclick="location.href='/codeList/list'">
                                <h3 class="tableSubLabel">공통코드 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">

                        </div>
                    </c:otherwise>
                </c:choose>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>

                <%--FORM CONTENT ENDS FROM HERE!!--%>
                <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    </main>
</div>
<%--script code--%>
<script>
    /*validation js*/


    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(e){
        var form = $("form[name=updateForm]");

        if(validationNull(form)) {
            $("form[name=updateForm]").attr("action", "/codeForm/update").submit();
        }else{
            alert("뭔가가 잘못되었다.");

        }

    });
    /*생성버튼 이벤트*/
    $(".insertBtn").on("click",function(e){
        $("form[name=insertForm]").attr("action", "/recipeForm/insert").submit();

    });
    /*삭제버튼 이벤트*/
    $(".deleteBtn").on("click",function(){
        $("form[name=updateForm]").attr("action","/recipeForm/delete").submit();
    });

</script>
<%--script code--%>
</body>
</html>
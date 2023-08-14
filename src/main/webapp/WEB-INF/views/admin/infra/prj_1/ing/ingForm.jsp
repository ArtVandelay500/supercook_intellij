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
                        <div class="mainLabelBox">
                            <h2 class="tableLabel">재료코드 추가</h2>
                            <div class="addBox" onclick="location.href='/ingList/list'">
                                <h3 class="tableSubLabel">재료코드 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <table>
                                <thead>
                                <tr>
                                    <th>재료명</th>
                                    <th>대그룹</th>
                                    <th>소그룹</th>
                                    <th>삭제여부</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <form name="insertForm">

                                        <td><input onchange="checkIng()" name="name" class="searchInput_form">
                                            <span class="ing_ok" >입력된 재료는 새 재료입니다</span>
                                            <span class="ing_already">이미 존재하는 재료입니다</span>
                                        </td>
                                        <td>
                                            <select id="insertSel" name="big_cat_ing">
                                                <option value="">::선택해주세요</option>
                                                <c:forEach var="inggroup" items="${ingGroup}">
                                                    <option value="<c:out value="${inggroup.seq}"/>">
                                                        <c:out value="${inggroup.catName}"/>
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select name="ingredient_seq">
                                                <option value="">::대그룹을 선택해주세요</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select name="useNy">
                                                <option value="0" <c:if test="${item.useNy == 0}">selected</c:if>>N</option>
                                                <option value="1" <c:if test="${item.useNy == 1}">selected</c:if>>Y</option>
                                            </select>
                                        </td>
                                        <td><button class="insertBtn btn">생성</button></td>
                                    </form>
                                </tr>
                                </tbody>
                            </table>
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
                            <h2 class="tableLabel">재료코드 수정</h2>
                            <div class="addBox" onclick="location.href='/ingList/list'">
                                <h3 class="tableSubLabel">재료코드 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <table>
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>재료명</th>
                                    <th>대그룹</th>
                                    <c:choose>
                                        <c:when test="${item.level == 2}">
                                            <th>소그룹</th>
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                    <th>삭제여부</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <form name="updateForm">
                                        <td><input readonly class="searchInput_formSeq" name="seq" value="<c:out value="${item.seq}"></c:out>"/></td>
                                        <td><input name="name" class="searchInput_form" value="<c:out value="${item.name}"/>"></td>
                                        <td>
                                            <select id="updateSel" name="big_cat_ing">
                                                <c:forEach var="inggroup" items="${ingGroup}">
                                                    <option value="<c:out value="${inggroup.seq}"/>"
                                                            <c:if test="${inggroup.seq == item.big_cat_ing}">selected</c:if>>
                                                        <c:out value="${inggroup.catName}"/>
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <c:choose>
                                            <c:when test="${item.level == 2}">
                                                <td>
                                                    <select name="ingredient_seq">
                                                        <c:forEach var="inggroup2" items="${ingGroupFormUpdate}">
                                                            <option value="<c:out value="${inggroup2.seq}"/>"
                                                                    <c:if test="${inggroup2.seq == item.ingredient_seq}">selected</c:if>>
                                                                <c:out value="${inggroup2.catName}"/>
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                            </c:otherwise>
                                        </c:choose>
                                        <td>
                                            <select name="useNy">
                                                <option value="0" <c:if test="${item.useNy == 0}">selected</c:if>>N</option>
                                                <option value="1" <c:if test="${item.useNy == 1}">selected</c:if>>Y</option>
                                            </select>
                                        </td>
                                        <td><button class="updateBtn btn">수정</button></td>
                                        <td><button class="deleteBtn btn">삭제</button></td>
                                    </form>
                                </tr>
                                </tbody>
                            </table>
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
    //INSERT SELECT APPEDING AJAX
    //INSERT SELECT APPEDING AJAX

    optMaker = function(obj){
        $(obj).change(function() {
            const optBigCat = $("select[name=big_cat_ing]").val();
            const selectTag = $("select[name=ingredient_seq]");

            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/ingGroupForm",
                data: {
                    "optBigCat": optBigCat
                },
                success: function (response) {
                    if (response.rt == "success") {
                        selectTag.empty();
                        const optionDefault = $("<option>").val(optBigCat).text("없음");
                        selectTag.append(optionDefault);
                        $.each(response.list, function(index, item) {
                            const option = $("<option>").val(item.seq).text(item.catName);
                            selectTag.append(option);
                        });


                    } else {
                        alert("failed");
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            }); //AJAX tag
        }); // EVENT tag
    }
    optMaker($("#insertSel"));
    optMaker($("#updateSel"));

    //INSERT SELECT APPEDING AJAX
    //INSERT SELECT APPEDING AJAX

    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(e){
        e.preventDefault();
        var input = $("input[name=name]");
        /*validation js*/
        if(validationNullEach(input)) {
            $("form[name=updateForm]").attr("action", "/ingForm/update").submit();
        }

    });
    /*생성버튼 이벤트*/
    $(".insertBtn").on("click",function(){
        if(checkIngInsertFormNull()){
            $("form[name=insertForm]").attr("action","/ingForm/insert").submit();
        }
    });
    /*삭제버튼 이벤트*/
    $(".deleteBtn").on("click",function(){
        $("form[name=updateForm]").attr("action","/ingForm/delete").submit();
    });

</script>
<%--script code--%>
</body>
</html>
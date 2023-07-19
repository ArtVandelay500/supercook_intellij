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
                            <h2 class="tableLabel">재료그룹 추가</h2>
                            <div class="addBox" onclick="location.href='/ingGroupList/list'">
                                <h3 class="tableSubLabel">재료그룹 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <table>
                                <thead>
                                <tr>
                                    <th>재료그룹명</th>
                                    <th>대그룹</th>
                                    <th>LEVEL</th>
                                    <th>사용여부</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <form name="insertForm">

                                        <td><input name="catName" class="searchInput_form" placeholder="재료그룹명"></td>
                                        <td>
                                            <select name="big_cat">
                                                <c:forEach var="opt" items="${ingGroup}">
                                                    <option value="<c:out value="${opt.seq}"/>">
                                                        <c:out value="${opt.catName}"/>
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select name="level">
                                                <option value="1" >1</option>
                                                <option value="2" >2</option>
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
                            <h2 class="tableLabel">재료그룹 수정</h2>
                            <div class="addBox" onclick="location.href='/ingGroupList/list'">
                                <h3 class="tableSubLabel">재료그룹 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <table>
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>재료그룹명</th>
                                    <th>대그룹</th>
                                    <th>LEVEL</th>
                                    <th>사용여부</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <form name="updateForm">
                                        <td><input readonly class="searchInput_formSeq" name="seq" value="<c:out value="${item.seq}"></c:out>"/></td>
                                        <td><input name="catName" class="searchInput_form" value="<c:out value="${item.catName}"></c:out>"></td>
                                        <td>
                                            <select name="big_cat">
                                                <c:forEach var="opt" items="${ingGroup}">
                                                    <option value="<c:out value="${opt.seq}"/>" <c:if test="${opt.seq == item.big_cat}">selected</c:if>>
                                                            <c:out value="${opt.catName}"/>
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select name="level">
                                                <option value="1" <c:if test="${item.level == 1}">selected</c:if>>1</option>
                                                <option value="2" <c:if test="${item.level == 2}">selected</c:if>>2</option>
                                            </select>
                                        </td>
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
    /*validation js*/
    const objName = $("input[name=catName]");



    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(e){
        e.preventDefault();
        if(validationNullEach(objName)){
            $("form[name=updateForm]").attr("action","/ingGroupForm/update").submit();
        }
    });
    /*생성버튼 이벤트*/
    $(".insertBtn").on("click",function(e){
        e.preventDefault();
        if(validationNullEach(objName) == false) {

        }else{
            $("form[name=insertForm]").attr("action","/ingGroupForm/insert").submit();
        }
    });
    /*삭제버튼 이벤트*/
    $(".deleteBtn").on("click",function(){
        $("form[name=updateForm]").attr("action","/ingGroupForm/delete").submit();
    });

</script>
<%--script code--%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:forEach items="${list}" var="list" varStatus="status">
    <c:out value="${list.seq}"></c:out>
    <c:out value="${list.big_cat}"></c:out>
    <c:out value="${list.name}"></c:out>
    <c:out value="${list.level}"></c:out>
    <c:out value="${list.useNy}"></c:out>
</c:forEach>



<!DOCTYPE html>
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
                <div class="mainLabelBox">
                    <h2 class="tableLabel">재료그룹 관리</h2>
                    <div class="addBox" onclick="location.href='/ingGroupForm'">
                        <h3 class="tableSubLabel">재료그룹 추가</h3>
                        <span class="material-symbols-outlined">add_box</span></a>
                    </div>
                </div>
                <form name="search">
                    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
                    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
                    <div class="searchBox">
                        <select name="optDelNy">
                            <option value="">삭제여부</option>
                            <option value="1">삭제</option>
                            <option value="0">미삭제</option>
                        </select>
                        <div class="inputBox">
                            <input id="srcGo" name="shKey" class="searchInput" type="text" value="<c:out value="${vo.shKey}"/>">
                            <span id="magGlass"class="material-symbols-outlined">search</span>
                        </div>
                    </div>
                </form>
                <div class="tableBox">
                    <table>
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>재료그룹명</th>
                            <th>대그룹</th>
                            <th></th>
                            <th></th>
                            <th>삭제여부</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${fn:length(list) eq 0}">
                                <tr>
                                    <td></td>
                                    <td><h4 id="nodata">There is no data!</h4></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                        <td><c:out value="${list.seq}"></c:out></td>
                                        <td><c:out value="${list.codeName}"></c:out></td>
                                        <td><button class="detailBtn" onclick="location.href='/codeGroupForm?seq=<c:out value = '${list.seq}'/>'">수정</button></td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${list.delNy eq '1'}">
                                                    Y
                                                </c:when>
                                                <c:otherwise>
                                                    N
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        </tbody>
                    </table>
                </div>
                <%--pagination include--%>
                <%--pagination include--%>
                <c:choose>
                    <c:when test="${vo.totalPages eq 1}">

                    </c:when>
                    <c:otherwise>

                        <%@include file="../includes/pagination.jsp"%>

                    </c:otherwise>
                </c:choose>
                <%--pagination include--%>
                <%--pagination include--%>


                <%--FORM CONTENT ENDS FROM HERE!!--%>
                <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    </main>
</div>

</body>
<script type="text/javascript">
    <%--pagination js function--%>
    <%--pagination js function--%>

    goList = function(thisPage) {
        if(thisPage == 0) {
            console.log("function 1st");
            $("input:hidden[name=thisPage]").val(1);
            $("form[name=search]").attr("action", "/codeGroupList/list").submit();

        } else if(thisPage > ${vo.totalPages}){
            console.log("function 2nd");
            $("input:hidden[name=thisPage]").val(thisPage - 1);
            $("form[name=search]").attr("action", "/codeGroupList/list").submit();
        }else{
            console.log("function 3rd");
            $("input:hidden[name=thisPage]").val(2);
            $("form[name=search]").attr("action", "/codeGroupList/list").submit();

        }
    }
    <%--pagination js function--%>
    <%--pagination js function--%>


    $("select[name=optCodeName],select[name=optDelNy]").on("change",function(){
        /*$("form[name=search]").attr("action","/codeList/list").submit();*/
        $.ajax({
            type: "post",
            url: "codeList/list",
            dataType:"text",
            data:{
                "optCodeName" : $("select[name=optCodeName]").val(),
                "optDelNy" : $("select[name=optDelNy]").val()
            },
            success: function() {
                alert("hey");
            },
            error: function (request, status, error) {
                console.log("code: " + request.status)
                console.log("message: " + request.responseText)
                console.log("error: " + error);
            }
        });
    });

</script>
</html>
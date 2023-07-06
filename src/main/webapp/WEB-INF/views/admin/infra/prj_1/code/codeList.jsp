<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
                    <h2 class="tableLabel">공통코드 관리</h2>
                    <div class="addBox" onclick="location.href='/codeForm'">
                        <h3 class="tableSubLabel">공통코드 추가</h3>
                        <span class="material-symbols-outlined">add_box</span></a>
                    </div>
                </div>
                <form name="search">
                    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
                    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
                    <div class="searchBox">
                        <select name="optCodeName">
                            <option value="">코드그룹</option>
                            <option value="1">조리법</option>
                            <option value="2">조리도구</option>
                            <option value="3">음식류</option>
                            <option value="4">기념일</option>
                            <option value="5">테마</option>
                        </select>
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
                            <th>분류코드</th>
                            <th>코드이름</th>
                            <th></th>
                            <th>삭제여부</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${fn:length(list) eq 0}">
                                <tr>
                                    <td></td>
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
                                        <td><c:out value="${list.name}"></c:out></td>
                                        <td><button class="detailBtn" onclick="location.href='/codeForm?seq=<c:out value = '${list.seq}'/>'">수정</button></td>
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

            $("input:hidden[name=thisPage]").val(1);
            $("form[name=search]").attr("action", "/codeList/list").submit();

        } else if(thisPage > ${vo.totalPages}){

            $("input:hidden[name=thisPage]").val(thisPage - 1);
            $("form[name=search]").attr("action", "/codeList/list").submit();
        }else{

                $("input:hidden[name=thisPage]").val(thisPage);
                $("form[name=search]").attr("action", "/codeList/list").submit();

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
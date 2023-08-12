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
                    <h2 class="tableLabel">레시피 관리</h2>
                    <div class="addBox" onclick="location.href='/recipeForm'">
                        <h3 class="tableSubLabel">레시피 추가</h3>
                        <span class="material-symbols-outlined">add_box</span></a>
                    </div>
                </div>
                <form name="search">
                    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
                    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
                    <div class="searchBox">
                        <select name="optDelNy">
                            <option value="">사용여부</option>
                            <option value="1">사용</option>
                            <option value="0">미시용</option>
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
                            <th>레시피명</th>
                            <th>레시피평점</th>
                            <th>소요시간</th>
                            <th>조회수</th>
                            <th>레시피사이트</th>
                            <th></th>
                            <th>사용여부</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${fn:length(list) eq 0}">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><h4 id="nodata">There is no data!</h4></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>

                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                        <td><c:out value="${list.seq}"></c:out></td>
                                        <td><c:out value="${list.recipeName}"></c:out></td>
                                        <td><c:out value="${list.recipeRating}"></c:out></td>
                                        <td><c:out value="${list.recipePrepTime}"></c:out></td>
                                        <td><c:out value="${list.recipeView}"></c:out></td>
                                        <td><c:out value="${list.recipeSource}"></c:out></td>
                                        <td>
                                            <button class="detailBtn" onclick="location.href='/recipeForm?seq=<c:out value = '${list.seq}'/>'">
                                                상세
                                            </button>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${list.useNy eq '1'}">
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
            $("form[name=search]").attr("action", "/recipeList/list").submit();

        } else if(thisPage > ${vo.totalPages}){

            $("input:hidden[name=thisPage]").val(thisPage - 1);
            $("form[name=search]").attr("action", "/recipeList/list").submit();
        }else{

            $("input:hidden[name=thisPage]").val(thisPage);
            $("form[name=search]").attr("action", "/recipeList/list").submit();

        }
    }
    <%--pagination js function--%>
    <%--pagination js function--%>
</script>
</html>
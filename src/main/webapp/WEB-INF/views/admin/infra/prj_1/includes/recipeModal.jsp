<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--모달 생성--%>
<div class="modalBuild modalWindow">
    <div class="modalHead">
        <h1>레시피 재료추가</h1>
        <a class="modalClose"><span class="material-symbols-outlined">close</span></a>
    </div>
    <div class="modalBodyLong">

        <form name="search">
            <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
            <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
            <div class="searchBox">
                <div class="inputBox">
                    <input id="srcGo" placeholder="재료명" name="shKey" class="searchInput" type="text" value="<c:out value="${vo.shKey}"/>">
                    <span id="magGlass"class="material-symbols-outlined">search</span>
                </div>
            </div>
        </form>
        <div class="tableBoxModal">
            <table>
                <thead>
                <tr>
                    <th>재료명</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${fn:length(list) eq 0}">
                        <tr>
                            <td></td>
                            <td><h1></h1> </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${list}" var="list" varStatus="status">
                            <tr>
                                <td><c:out value="${list.name}"></c:out></td>
                                <td>
                                    <button class="detailBtn" onclick="location.href='/ingForm?seq=<c:out value = '${list.seq}'/>&big_cat_ing=<c:out value = '${list.big_cat_ing}'/>'">
                                        수정
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>

    </div>
    <div class="modalFooter">
        <button class="modalOk">완료</button>
    </div>
</div>
<%--모달 생성--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/prj_1/admin/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" /></head>
<link rel="stylesheet" href="https://cdn.jsdel¬øivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="/resources/js/jquery-3.6.4.min.js"></script>
<body>
<div>
    <header>
        <div class="headerBox">
            <div class="logo"><img src="/resources/img/prj_1/admin/img.png" alt=""></div>
            <div class="nav">
                <ul class="navList">
                    <a class="itemBox" href=""><li>재료관리</li></a>
                    <a class="itemBox" href=""><li>레시피관리</li></a>
                    <a class="itemBox" href=""><li>사용자관리</li></a>
                    <a class="itemBox" href=""><li>조리법관리</li></a>
                    <a class="itemBox" href=""><li>조리도구관리</li></a>
                    <a class="itemBox" href=""><li>테마관리</li></a>
                </ul>
            </div>
            <div class="outBtn">
                    <span class="material-symbols-outlined">
                    power_settings_new</span>
            </div>
        </div>
    </header>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
                <div class="mainLabelBox">
                    <h2 class="tableLabel">공통코드 관리</h2>
                    <div class="addBox">
                        <h3 class="tableSubLabel">공통코드 추가</h3>
                        <span class="material-symbols-outlined">add_box</span>
                    </div>


                </div>
                <div class="searchBox">
                    <select name="codeGroup">
                        <option value="">코드그룹</option>
                        <option value="1">조리법</option>
                        <option value="2">조리도구</option>
                        <option value="3">음식류</option>
                        <option value="4">기념일</option>
                        <option value="5">테마</option>
                    </select>
                    <select name="delNy">
                        <option value="">삭제여부</option>
                        <option value="1">삭제</option>
                        <option value="0">미삭제</option>
                    </select>
                    <div class="inputBox">
                        <input class="searchInput" type="text">
                        <span id="magGlass"class="material-symbols-outlined">
                                search
                                </span>
                    </div>
                </div>
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
                                <h1 class="text-center" colspan="9">There is no data!</h1>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                        <td ><c:out value="${list.a.seq}"></c:out></td>
                                        <td><c:out value="${list.aname}"></c:out></td>
                                        <td><a href="/codeGroupForm?seq=<c:out value = '${list.a.seq}'/>"><c:out value="${list.a.name}"></c:out></a></td>
                                        <td><button value="<c:out value = '${list.a.seq}'/>" class="detailBtn">상세</button></td>
                                        <td><c:if test="${list.a.delNy == 0}">N</c:if></td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
<script>

</script>
</html>
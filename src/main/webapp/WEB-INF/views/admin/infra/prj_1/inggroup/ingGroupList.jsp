<%-
  Created by IntelliJ IDEA.
  User: biqui
  Date: 2023/07/12
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>


<head>
    <title>Title</title>
</head>
<body>

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





</body>
</html>

a.seq,
a.name AS codeName,
a.ingredient_seq,
a.useNy,
b.name

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:forEach items="${list}" var="list" varStatus="status">
    <c:out value="${list.seq}"></c:out>
    <c:out value="${list.codeName}"></c:out>
    <c:out value="${list.ingredient_seq}"></c:out>
    <c:out value="${list.useNy}"></c:out>
    <c:out value="${list.name}"></c:out>
</c:forEach>

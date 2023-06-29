<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>Document</title>

</head>
<body>
<form name="formList" action="" method="" display="flex">
    <select style="width:auto;" class="form-select mb-1" aria-label="Default select example" name="shOption">
        <option value="">사용여부</option>
        <option value="1">사용</option>
        <option value="0">미사용</option>
    </select>


    <input type="text" name="shKeyword"/>
    <button  id="btn">Search</button>
    <button id="xxxBtn">xxx</button>

</form>
<script type="text/javascript">
    $("#btn").on("click",function(){
        // 자기 자신을 호출할 때
        console.log("hey");
        $("form[name=formList]").attr("action","/dddd");
    });



</script>


<table class="table table-bordered" >
    <thead class="table-primary">
    <th style="width:1%" scope="col">#</th>
    <th style="width:1%" scope="col">type</th>
    <th style="width:10%" scope="col">name</th>
    <th style="width:1%" scope="col">사용여부</th>
    </thead >
    <tbody>
    <c:choose>
        <c:when test="${fn:length(list) eq 0}">
            <h1 class="text-center" colspan="9">There is no data!</h1>
        </c:when>
        <c:otherwise>
            <c:forEach items="${list}" var="list" varStatus="status">
                <tr>
                    <td ><c:out value="${list.seq}"></c:out></td>
                    <td><c:out value="${list.code_seq}"></c:out></td>
                    <td><a href="/codeGroupForm?seq=<c:out value = '${list.seq}'/>"><c:out value="${list.name}"></c:out></a></td>
                    <td><c:out value="${list.delNy}"></c:out></td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>


</body>
</html>
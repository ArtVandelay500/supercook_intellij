<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="includes/headUser.jsp"%>
<body>
<div>
    <%@include file="includes/headerUser.jsp"%>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
                <%--SEARCH FILTER STARTS FROM HERE--%>
                <%--SEARCH FILTER STARTS FROM HERE--%>
                    <div class="catRow">
                        <h4>요리별</h4>
                        <ul class="catList">

                        </ul>
                    </div>
                    <div class="catRow">
                        <h4>테마별</h4>
                        <ul class="catList">
                        </ul>
                    </div>
                    <div class="catRow">
                        <h4>재료별</h4>
                        <ul class="catList">
                        </ul>
                    </div>
                    <div class="catRow">
                        <h4>조리법별</h4>
                        <ul class="catList">
                        </ul>
                    </div>
                <%--SEARCH FILTER ENDS FROM HERE--%>
                <%--SEARCH FILTER ENDS FROM HERE--%>
            </div>
            <div class="mainContainer">
                <%--FORM CONTENT STARTS FROM HERE!!--%>
                <%--FORM CONTENT STARTS FROM HERE!!--%>




                <%--FORM CONTENT ENDS FROM HERE!!--%>
                <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    </main>
</div>

</body>

</html>
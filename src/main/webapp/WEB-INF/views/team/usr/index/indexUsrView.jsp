<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="../include/head.jsp"%>
<body>
<div>
    <%@include file="../include/header.jsp"%>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
                <%--FORM CONTENT STARTS FROM HERE!!--%>
                <%--FORM CONTENT STARTS FROM HERE!!--%>
                    <buton class="modalBtn">MCDONALDS</buton>
                    <div id="modal"></div>
                    <div id="modalWindow">
                        <div class="modalHead">
                            <h1>너신고!</h1>
                            <a class="modalClose"><span class="material-symbols-outlined">close</span></a>
                        </div>
                        <div class="modalBody">
                            <div class="userBox">
                                <div class="userImg">
                                    <img src="/resources/team/img/yummy_color.png"/>
                                    <div class="crown"><img src="/resources/team/img/crown.png"/></div>
                                </div>
                                <div class="userInfo">
                                    <h4 class="nickname">닉네임: 아무개</h4>
                                    <h5>매너온도: 39.9</h5>
                                </div>
                                <div class="userBtns">
                                    <button class="userBtn recommend">추천</button>
                                    <button class="userBtn report">신고</button>
                                    <button class="userBtn block">차단</button>
                                </div>
                            </div>
                            <div class="userBox">
                                <div class="userImg">
                                    <img src="/resources/team/img/yummy_color.png"/>
                                    <div class="crown"><img src="/resources/team/img/crown.png"/></div>
                                </div>
                                <div class="userInfo">
                                    <h4 class="nickname">닉네임: 아무개</h4>
                                    <h5>매너온도: 39.9</h5>
                                </div>
                                <div class="userBtns">
                                    <button class="userBtn recommend">추천</button>
                                    <button class="userBtn report">신고</button>
                                    <button class="userBtn block">차단</button>
                                </div>
                            </div>
                            <div class="userBox">
                                <div class="userImg">
                                    <img src="/resources/team/img/yummy_color.png"/>
                                    <div class="crown"><img src="/resources/team/img/crown.png"/></div>
                                </div>
                                <div class="userInfo">
                                    <h4 class="nickname">닉네임: 아무개</h4>
                                    <h5>매너온도: 39.9</h5>
                                </div>
                                <div class="userBtns">
                                    <button class="userBtn recommend">추천</button>
                                    <button class="userBtn report">신고</button>
                                    <button class="userBtn block">차단</button>
                                </div>
                            </div>
                        </div>
                        <div class="modalFooter"></div>
                    </div>


                <%--FORM CONTENT ENDS FROM HERE!!--%>
                <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    <%@include file="../include/footer.jsp"%>
    </main>
</div>
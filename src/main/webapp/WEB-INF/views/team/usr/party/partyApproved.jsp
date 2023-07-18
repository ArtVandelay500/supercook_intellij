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
          <div id="modal"></div>
          <%@include file="../include/partyBuild.jsp"%>
          <div class="mainLabelBox">
            <h2 class="tableLabel">방찾기</h2>
            <div id="buildParty" class="addBox" onclick="">
              <h3 class="tableSubLabel">방생성</h3>
              <span class="material-symbols-outlined">add_box</span></a>
            </div>
          </div>

          <form name="search">
            <div class="searchBox">
              <select name="">
                <option value="">::종목</option>
              </select>
              <select name="">
                <option value="">::날짜</option>
              </select>
              <select name="">
                <option value="">::성별</option>
              </select>
              <select name="">
                <option value="">::지역</option>
              </select>
              <select name="">
                <option value="">::연령대</option>
              </select>
            </div>
          </form>
          <%--Table Contencts--%>
          <%--Table Contencts--%>
          <%--Table Contencts--%>
          <div class="tableBox">
            <table>
              <thead>
              <tr>
                <th>No.</th>
                <th>종목</th>
                <th>파티명</th>
                <th>인원수</th>
                <th>날짜</th>
                <th>시간</th>
                <th>성별</th>
                <th>지역</th>
                <th>참가</th>
                <th>방장톡</th>
              </tr>
              </thead>
              <tbody>
                <tr>
                  <td>156</td>
                  <td>러닝</td>
                  <td>1/2</td>
                  <td>구래동 우사인볼트 찾습니다</td>
                  <td>07/22</td>
                  <td>18:00</td>
                  <td>무관</td>
                  <td>구래동</td>
                  <td>
                    <button class="detailBtn">
                      <span class="material-symbols-outlined">send</span>
                    </button>
                  </td>
                  <td>
                    <button class="detailBtn">
                      <span class="material-symbols-outlined">sms</span>
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
              <%--Table Contencts--%>
              <%--Table Contencts--%>
              <%--Table Contencts--%>

          <%--FORM CONTENT ENDS FROM HERE!!--%>
          <%--FORM CONTENT ENDS FROM HERE!!--%>
      </div>
    </div>
    <%@include file="../include/footer.jsp"%>
  </main>
</div>
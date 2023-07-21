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
            <div class="searchBox">
                <div class="inputBox">
                    <input id="srcGo" placeholder="재료명" name="shKey" class="searchInput" type="text">
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
                <tbody id="recipeIngRt">

                </tbody>
            </table>
        </div>
        <div class=basket>
<%--            <div class="basketItem">--%>
<%--                <span>미역</span>--%>
<%--                <div class="closeBox"><span class="material-symbols-outlined">close</span></div>--%>
<%--            </div>--%>
        </div>
    </div>
    <div class="modalFooter">
        <button class="modalOk">완료</button>
    </div>
</div>
<%--모달 생성--%>

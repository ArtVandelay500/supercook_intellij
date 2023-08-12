<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--모달 생성--%>
<div class="modalTool modalBuild modalWindow">
    <div class="modalHead">
        <h1>레시피 조리도구추가</h1>
        <a class="modalClose"><span class="material-symbols-outlined">close</span></a>
    </div>
    <div class="modalBodyLong">

        <form name="search">
            <div class="searchBox">
                <div class="inputBox">
                    <input id="srcGo" placeholder="조리도구명" name="shKey" class="searchInput" type="text">
                    <span id="magGlass"class="material-symbols-outlined">search</span>
                </div>
            </div>
        </form>

        <div class="tableBoxModal">
            <table>
                <thead>
                <tr>
                    <th>조리도구명</th>
                    <th></th>
                </tr>
                </thead>
                <tbody id="recipeToolRt">

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

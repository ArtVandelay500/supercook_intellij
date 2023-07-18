<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--모달 생성--%>
<div class="modalBuild modalWindow">
    <div class="modalHead">
        <h1>생성하기</h1>
        <a class="modalClose"><span class="material-symbols-outlined">close</span></a>
    </div>
    <div class="modalBody">
        <div class="formBox">
            <form>

                <div class="labelBox">
                    <label for="partyName">파티명</label>
                    <input id="partyName" placeholder="파티명"/>
                </div>
                <div class="labelBox">
                    <label for="partyNum">인원</label>
                    <select id="partyNum">
                        <option>::인원</option>
                    </select>
                    <label for="event">종목</label>
                    <select id="event">
                        <option>::종목</option>
                    </select>
                </div>
                <div class="labelBox">
                    <select>
                        <option>17:00</option>
                    </select>
                    <select>
                        <option>21:00</option>
                    </select>
                </div>
                <select>
                    <option>::</option>
                </select>
            </form>
        </div>
    </div>
    <div class="modalFooter">
        <button class="modalOk">생성</button>
    </div>
</div>
<%--모달 생성--%>
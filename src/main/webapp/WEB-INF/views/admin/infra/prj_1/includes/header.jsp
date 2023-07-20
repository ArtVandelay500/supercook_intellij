<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<header>
    <div class="headerBox">
        <div class="logo" onclick="location.href='/indexAdminView'" ><img src="/resources/img/prj_1/admin/img.png" alt=""></div>
        <div class="nav">
            <div class="curtain"></div>
            <ul class="navList">
                <div class="navListBox">
                    <a class="itemBox" href="#">
                        <li>
                            공통코드관리
                        </li>
                    </a>
                        <ul class="subNavList">
                            <a href="/codeList/list"><li>
                                공통코드
                            </li></a>
                            <a href="/codeGroupList/list"><li>
                                공통코드그룹
                            </li></a>
                        </ul>

                </div>

                <div class="navListBox">
                    <a class="itemBox" href="#">
                        <li>
                            재료관리
                        </li>
                    </a>
                    <ul class="subNavList">
                        <a href="/ingList/list"><li>
                            재료코드
                        </li></a>
                        <a href="/ingGroupList/list"><li>
                            재료코드그룹
                        </li></a>
                    </ul>
                </div>
                <a class="itemBox" href="/recipeList/list"><li>레시피관리</li></a>
                <a class="itemBox" href="/member/list"><li>멤버관리</li></a>
                <a class="itemBox" href=""><li>조리도구관리</li></a>
                <a class="itemBox" href=""><li>테마관리</li></a>
            </ul>
        </div>

            <c:choose>
                <c:when test="${not empty sessionId }">
                    <div onclick="logOut()" class="outBtn">
                        <span class="material-symbols-outlined">power_settings_new</span>
                    </div>
                </c:when>
                <c:otherwise>
                    <div onclick="location.href='/loginAdmin'" class="outBtn">
                        <span class="material-symbols-outlined">login</span>
                    </div>
                </c:otherwise>
            </c:choose>


    </div>
</header>
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
            </ul>
        </div>

            <c:choose>
                <c:when test="${not empty sessionId }">
                    <%--Profile Picture--%>
                    <%--Profile Picture--%>

                    <div class="dropdown">
                        <a id="headerProfile" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <c:choose>
                                <c:when test="${not empty sessionProfilePath}">
                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                         id="uploadImgProfilePreview"
                                         src="<c:out value="${sessionProfilePath}"/><c:out value="${sessionProfileName}"/>"
                                         class="rounded-circle d-block" width="70" height="70"
                                    />
                                </c:when>
                                <c:otherwise>
                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"
                                         id="uploadImgProfilePreview"
                                         src="/resources/img/prj_1/admin/defaultProfile.png"
                                         class="rounded-circle d-block" width="60" height="60"
                                    />
                                </c:otherwise>
                            </c:choose>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" onclick="logOut()">로그아웃</a></li>
                            <li><a class="dropdown-item" onclick="location.href='/memberForm?seq=<c:out value='${sessionSeq}'/>'">내 정보</a></li>
                        </ul>
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
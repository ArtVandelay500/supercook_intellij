<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
<%@include file="../includes/head.jsp"%>
<body>
<div>
    <%@include file="../includes/header.jsp"%>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
                <%--FORM CONTENT STARTS FROM HERE!!--%>
                <%--FORM CONTENT STARTS FROM HERE!!--%>

                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <%--WHEN SEQ IS NULL--%>
                <c:choose>
                    <c:when test="${empty item.seq }">
                        <div class="mainLabelBox">
                            <h2 class="tableLabel">멤버 추가</h2>
                            <div class="addBox" onclick="location.href='/member/list'">
                                <h3 class="tableSubLabel">멤버 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <form class="row g-4" method="post" autocomplete="off" name="insertForm" enctype="multipart/form-data">
                                <%--USER PROFILE STARTS--%>
                                <%--USER PROFILE STARTS--%>
                                <div class="row mb-3">
                                    <div style="position: relative" class="col-sm-12 text-center">
                                    <c:set var="type" value="1"/>		<!-- #-> -->
                                    <c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->

                                    <c:choose>
                                        <c:when test="${fn:length(listUploaded) eq 0 }">
                                        <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                        </c:when>
                                        <c:otherwise>
                                            <c:set var="GetNy" value="0"/>
                                            <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
                                                <c:if test="${listUploaded.type eq type}">
                                                    <input type="hidden" id="<c:out value="${name}"/>DeleteSeq" name="<c:out value="${name}"/>DeleteSeq" value="<c:out value="${listUploaded.seq}"/>"/>
                                                    <input type="hidden" id="<c:out value="${name}"/>DeletePathFile" name="<c:out value="${name}"/>DeletePathFile" value="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName}"/>"/>
                                                    <img id="<c:out value="${name}"/>Preview" src="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName}"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
                                                    <c:set var="GetNy" value="1"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${GetNy eq 0 }">
                                                <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                            </c:if>
                                        </c:otherwise>
                                    </c:choose>
                                    <input type="hidden" id="<c:out value="${name}"/>Type" name="<c:out value="${name}"/>Type" value="<c:out value="${type}"/>"/>
                                    <input type="hidden" id="<c:out value="${name}"/>MaxNumber" name="<c:out value="${name}"/>MaxNumber" value="0"/>
                                    <label for="<c:out value="${name}"/>" class="form-label input-file-button">
                                        <b>
                                            <span style="font-weight: 900; font-size: 20px; cursor: pointer; padding: 5px; border-radius: 50%; color: white; background-color: coral; position: absolute; transform: translateX(-50%); bottom:10px;" class="material-symbols-outlined">settings</span>
                                        </b>
                                    </label>
                                    <input class="form-control form-control-sm" id="<c:out value="${name}"/>" name="<c:out value="${name}"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name}"/>', <c:out value="${type}"/>, 1, 1, 0, 0, 3);">
                                </div>
                            </div>
                            <%--USER PROFILE END--%>
                            <%--USER PROFILE END--%>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="email" class="form-label">이메일</label>
                                        <input type="text" class="form-control" id="email" name="email">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="pwd" class="form-label">비밀번호</label>
                                        <input type="text" class="form-control" id="pwd" name="pwd">
                                    </div>
                                </div>
                                <%--imgUpload--%>
                                <%--imgUpload--%>
                                <%--imgUpload--%>
<%--                                <div class="row mb-3">--%>
<%--                                    <div class="col-md-6">--%>
<%--                                        <div class="col-sm-6 mt-3 mt-sm-0">--%>
<%--                                            <c:set var="type" value="2"/>		<!-- #-> -->--%>
<%--                                            <c:set var="name" value="uploadImg"/>		<!-- #-> -->--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>--%>
<%--                                            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>--%>
<%--                                            <input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">--%>
<%--                                            <div id="<c:out value="${name }"/>Preview" class="addScroll">--%>
<%--                                                <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">--%>
<%--                                                    <c:if test="${listUploaded.type eq type }">--%>
<%--                                                        <div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">--%>
<%--                                                            <img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">--%>
<%--                                                            <div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>--%>
<%--                                                        </div>--%>
<%--                                                    </c:if>--%>
<%--                                                </c:forEach>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <%--imgUpload--%>
                                <%--imgUpload--%>
                                <%--imgUpload--%>
                                <div class="col-12 justify-content-md-center">
                                    <button class="insertBtn btn btn-success btn-lg" >생성</button>
                                </div>
                            </form>
                        </div>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>
                        <%--WHEN SEQ IS NULL--%>



                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                        <%--WHEN SEQ IS NOT NULL--%>
                    </c:when>
                    <c:otherwise>
                        <div class="mainLabelBox">
                            <h2 class="tableLabel">멤버 수정</h2>
                            <div class="addBox" onclick="location.href='/member/list'">
                                <h3 class="tableSubLabel">멤버 목록</h3>
                                <span id="back2list" class="material-symbols-outlined">clear_all</span>
                            </div>
                        </div>
                        <div class="tableBox_form">
                            <form class="row g-4" method="post" autocomplete="off" name="updateForm" enctype="multipart/form-data">
                                    <%--USER PROFILE STARTS--%>
                                    <%--USER PROFILE STARTS--%>
                                <div class="row mb-3">
                                    <div style="position: relative" class="col-sm-12 text-center">
                                        <c:set var="type" value="1"/>		<!-- #-> -->
                                        <c:set var="name" value="uploadImgProfile"/><!-- #-> -->
                                        <%--if this is 0, won't update(delete and insert) profile, otherwise maintain status quo--%>
                                        <input id="hasFileChangedProfile" type="hidden" name="hasFileChangedProfile" value="0"/><!-- #-> -->

                                        <c:choose>
                                            <c:when test="${fn:length(listUploaded) eq 0 }">
                                                <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="GetNy" value="0"/>
                                                <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
                                                    <c:if test="${listUploaded.type eq type}">
                                                        <input type="hidden" id="<c:out value="${name}"/>DeleteSeq" name="<c:out value="${name}"/>DeleteSeq" value="<c:out value="${listUploaded.seq}"/>"/>
                                                        <input type="hidden" id="<c:out value="${name}"/>DeletePathFile" name="<c:out value="${name}"/>DeletePathFile" value="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName}"/>"/>
                                                        <img style="object-fit: cover" id="<c:out value="${name}"/>Preview" src="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName}"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
                                                        <c:set var="GetNy" value="1"/>
                                                    </c:if>
                                                </c:forEach>
                                                <c:if test="${GetNy eq 0 }">
                                                    <img id="<c:out value="${name}"/>Preview" src="/resources/img/prj_1/admin/defaultProfile.png" class="rounded-circle mx-auto d-block" width="100" height="100">
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <input type="hidden" id="<c:out value="${name}"/>Type" name="<c:out value="${name}"/>Type" value="<c:out value="${type}"/>"/>
                                        <input type="hidden" id="<c:out value="${name}"/>MaxNumber" name="<c:out value="${name}"/>MaxNumber" value="0"/>
                                        <label for="<c:out value="${name}"/>" class="form-label input-file-button">
                                            <b>
                                                <span onclick="clickForChange()" style="font-weight: 900; font-size: 20px; cursor: pointer; padding: 5px; border-radius: 50%; color: white; background-color: coral; position: absolute; transform: translateX(-50%); bottom:10px;" class="material-symbols-outlined">settings</span>
                                            </b>
                                        </label>
                                        <input class="form-control form-control-sm" id="<c:out value="${name}"/>" name="<c:out value="${name}"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name}"/>', <c:out value="${type}"/>, 1, 1, 0, 0, 3);">
                                    </div>
                                </div>
                                    <%--USER PROFILE END--%>
                                    <%--USER PROFILE END--%>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="email" class="form-label">이메일</label>
                                        <input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>" >
                                    </div>
                                </div>
                                <div class="row mb-3 ">
                                    <div class="col-md-4">
                                        <label for="pwd" class="form-label">비밀번호</label>
                                        <input type="text" class="form-control" id="pwd" name="pwd" value="<c:out value="${item.pwd}"/>" >
                                        <input type="hidden" name="seq" value="<c:out value="${item.seq}"/>">
                                    </div>
                                </div>
                                    <%--imgUpload--%>
                                    <%--imgUpload--%>
                                    <%--imgUpload--%>
<%--                                <div class="row mb-3">--%>
<%--                                    <div class="col-md-6">--%>
<%--                                        <div class="col-sm-6 mt-3 mt-sm-0">--%>
<%--                                            <c:set var="type" value="2"/>		<!-- #-> -->--%>
<%--                                            <c:set var="name" value="uploadImg"/>		<!-- #-> -->--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>--%>
<%--                                            <input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>--%>
<%--                                            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>--%>
<%--                                            <input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">--%>
<%--                                            <div id="<c:out value="${name }"/>Preview" class="addScroll">--%>
<%--                                                <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">--%>
<%--                                                    <c:if test="${listUploaded.type eq type }">--%>
<%--                                                        <div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">--%>
<%--                                                            <img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">--%>
<%--                                                            <div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>--%>
<%--                                                        </div>--%>
<%--                                                    </c:if>--%>
<%--                                                </c:forEach>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                    <%--imgUpload--%>
                                    <%--imgUpload--%>
                                    <%--imgUpload--%>
                                <div class="row mb-3">
                                        <div class="col-md-2">
                                            <button class="updateBtn btn btn-success btn-lg" >수정</button>
                                        </div>
                                        <div class="col-md-2">
                                            <button class="deleteBtn btn btn-danger btn-lg" >삭제</button>
                                        </div>
                                </div>
                            </form>
                        </div>
                    </c:otherwise>
                </c:choose>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>
                <%--WHEN SEQ IS NOT NULL--%>

                <%--FORM CONTENT ENDS FROM HERE!!--%>
                <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    </main>
</div>
<%--script code--%>
<script>
    /*validation js*/
    const objName = $("input[name=email]");
    const objPwd = $("input[name=pwd]");



    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(){
            $("form[name=updateForm]").attr("action","/memberForm/update").submit();
    });
    /*생성버튼 이벤트*/
    $(".insertBtn").on("click",function(e){
            $("form[name=insertForm]").attr("action","/memberForm/insert").submit();

    });
    /*삭제버튼 이벤트*/
    $(".deleteBtn").on("click",function(){
        $("form[name=updateForm]").attr("action","/memberForm/delete").submit();
    });

</script>
<%--script code--%>
</body>
</html>
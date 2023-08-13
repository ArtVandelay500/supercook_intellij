<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/biography/index_style.css">
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="animation_border">
        <div class="border_box">
            <div class="profile_container">
                <div class="name_box">
                    <h1>Hyunwook Hong</h1>
                    <h3>description</h3>
                </div>
                <div class="info_box">
                    <ul>
                        <li>
                            <a class="btn_home" href="#">Home</a>
                        </li>
                        <li><a class="btn_projects" href="#">Projects</a></li>
                        <li><a class="btn_contact" href="#">Contact</a></li>
                    </ul>
                </div>

            </div>
            <div class="main_container">
                <div class="section_index">
                    <p>
                        born in 1995 in Icheon
                    </p>
                </div>
                <div class="section_projects">
                    <div class="project_1">
<%--                        <h3>Yummy!</h3>--%>
                        <div style="width: 20%"><img style="object-fit: cover; width: 100%;" src="/resources/img/prj_1/user/newYummy.png"></div>
                        <ul>
                            <li><a href="/login">User</a></li>
                            <li><a href="/loginAdmin">Admin</a></li>
                        </ul>
                    </div>
                </div>
                <div class="section_contact">
                    <h3>Contact Me</h3>
                    <ul>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">Notion</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="mode">
    <div id="light" class="light">LIGHT</div>
    <div id="dark" class="darkout">DARK</div>
</div>
<script src="/resources/js/jquery-3.6.4.min.js"></script>
<script src="/resources/js/biography/index.js"></script>
</body>
</html>
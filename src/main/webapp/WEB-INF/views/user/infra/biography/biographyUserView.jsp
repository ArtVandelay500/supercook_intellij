<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/img/favicon/favicon-16x16.png">
    <link rel="stylesheet" href="/resources/css/biography/index_style.css">
    <title>홍현욱</title>
    <style>
        .section_index{
            overflow: hidden!important;
            padding: 50px!important;
            box-sizing: border-box;
        }
        .triggers {
            bottom: 20px;
            color: white;
            left: 50%;
            position: absolute;
            text-align: center;
            transform: translateX(-50%);
            width: 100%;
            z-index: 10;
        }
        .triggers span {
            cursor: pointer;
            display: inline-block;
            font-size: 14px;
            margin: 0 20px;
            padding: 2px 4px;
            transition: opacity 0.5s, color 0.5s;
        }
        .triggers span[data-disabled="true"] {
            opacity: 0.3;
            pointer-events: none;
        }
        .triggers span:hover {
            color: red;
        }
    </style>

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
<%--                    <p>--%>
<%--                        안녕하세요! <br>--%>
<%--                        홍현욱이라는 이름의 프로그래머입니다.<br>--%>
<%--                        조촐한 제 공간까지 어려운 걸음해주셔서 감사드립니다!<br>--%>
<%--                        🙇🏻‍♂️--%>
<%--                    </p>--%>
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
                        <li><a target="_blank" href="https://github.com/ArtVandelay500">GitHub</a></li>
                        <li><a target="_blank" href="https://glossy-echo-0f8.notion.site/NOTION-7082a2f5e9024074895b6873ffa49c95?pvs=4">Notion</a></li>
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
<script async src="https://unpkg.com/es-module-shims@1.6.3/dist/es-module-shims.js"></script>
<script type="importmap">
     {
    "imports": {
      "three": "https://unpkg.com/three/build/three.module.js",
      "three/addons/": "https://unpkg.com/three/examples/jsm/"
    }
  }
</script>

<script type="module">
    // Use the type="module" attribute to enable ES6 module syntax

    import * as THREE from 'three';

    document.addEventListener("DOMContentLoaded", function(){
        const scene = new THREE.Scene();
        let isDarkMode = false; // Keep track of the mode

        // Set initial background color
        scene.background = new THREE.Color(isDarkMode ? 0x000000 : 0xffffff);

        // ... (rest of your code)

        // Handle light/dark mode button click
        const lightButton = document.getElementById("light");
        const darkButton = document.getElementById("dark");

        lightButton.addEventListener("click", () => {
            isDarkMode = false;
            scene.background = new THREE.Color(0xffffff); // Light background color
            cube.material.opacity = .8;
        });

        darkButton.addEventListener("click", () => {
            isDarkMode = true;
            scene.background = new THREE.Color(0x000000); // Dark background color
            cube.material.opacity = 1;
            animateX2();
        });

        const setnameElement = document.querySelector(".section_index");
        const computedStyles = getComputedStyle(setnameElement);
        const setnameWidth = setnameElement.clientWidth - parseFloat(computedStyles.borderLeftWidth) - parseFloat(computedStyles.borderRightWidth) - 10; // Subtract 10 pixels
        const setnameHeight = setnameElement.clientHeight - parseFloat(computedStyles.borderTopWidth) - parseFloat(computedStyles.borderBottomWidth) - 10; // Subtract 10 pixels

        const camera = new THREE.PerspectiveCamera(75, setnameWidth / setnameHeight, 0.8, 500);
        const renderer = new THREE.WebGLRenderer();
        renderer.setSize(setnameWidth, setnameHeight); // Set renderer size
        setnameElement.appendChild(renderer.domElement);

        const geometry = new THREE.BoxGeometry(1, 1, 1);
        const material = new THREE.MeshBasicMaterial({
            color: 0xFF6347,
            opacity: 0.5, // Set the opacity value here
            transparent: true, // Make the material transparent
        });
        const cube = new THREE.Mesh(geometry, material);
        scene.add(cube);

        camera.position.z = 5;

        function animate() {
            requestAnimationFrame(animate);

            cube.rotation.x += 0.01;
            cube.rotation.y += 0.01;

            renderer.render(scene, camera);
        }
        function animateX2() {
            requestAnimationFrame(animate);

            cube.rotation.x += 0.05;
            cube.rotation.y += 0.05;

            renderer.render(scene, camera);
        }

        animate();

        // Handle window resizing or changes in setnameElement's dimensions
        window.addEventListener('resize', () => {
            const newWidth = setnameElement.clientWidth - parseFloat(computedStyles.borderLeftWidth) - parseFloat(computedStyles.borderRightWidth) - 10;
            const newHeight = setnameElement.clientHeight - parseFloat(computedStyles.borderTopWidth) - parseFloat(computedStyles.borderBottomWidth) - 10;

            // Update camera aspect ratio
            camera.aspect = newWidth / newHeight;
            camera.updateProjectionMatrix();

            // Update renderer size
            renderer.setSize(newWidth, newHeight);
        });
    });
</script>
</html>
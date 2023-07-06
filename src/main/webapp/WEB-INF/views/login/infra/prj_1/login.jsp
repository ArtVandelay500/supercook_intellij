<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/resources/css/prj_1/login/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://cdn.jsdel¬øivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/prj_1/login/login.js"></script>
    <title>Please Log In</title>
</head>
<body>
    <div class="loginContainer">
        <div class="welcome-container">
            <div class="welcome-header"><img src="/resources/img/prj_1/admin/yummy_white.png"></div>
            <form class="welcome-form" action="friends.html">
                <label id="id-label" for="user-id">ID: </label>
                <input
                        required
                        id="user-id"
                        type="text"
                        placeholder="Enter Your ID..."
                />
                <label id="pwd-label" for="user-pwd">PWD: </label>
                <input
                        required
                        minlength="5"
                        maxlength="15"
                        id="user-pwd"
                        type="password"
                        placeholder="Enter Your Password..."
                />
                <div class="btns">
                    <button class="login">In</button>
                    <button class="signup">Sign Up</button>
                </div>
                <a class="forget" href="">Or Perhaps, You Have Forgotten Both?</a>
            </form>
        </div>
    </div>
</body>
</html>
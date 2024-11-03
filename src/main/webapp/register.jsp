<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sign Up</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="static/images/logo.png"/>
    <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/css/new-register-style.css">
</head>

<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="register-box shadow-lg p-4 p-lg-5 rounded" data-aos="fade-in">
        <h2 class="text-center mb-4">Create Your Account</h2>

        <form action="register" method="post" enctype="multipart/form-data" class="form-register">
            ${alert}

            <!-- Profile Image Input -->
            <div class="form-group text-center mb-4">
                <label for="imgInp">
                    <img id="blah" src="static/images/blank_avatar.png" alt="your image" class="rounded-circle mb-2" style="height: 6em; width: 6em;">
                    <div>Click to upload profile image</div>
                </label>
                <input name="profile-image" type="file" id="imgInp" style="display: none;">
            </div>

            <!-- Username Field -->
            <div class="form-group">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Enter your username" required>
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
            </div>

            <!-- Repeat Password Field -->
            <div class="form-group">
                <label for="repeat-password" class="form-label">Repeat Password</label>
                <input type="password" class="form-control" name="repeat-password" id="repeat-password" placeholder="Repeat your password" required>
            </div>

            <!-- Submit Button -->
            <div class="form-group text-center mt-4">
                <button type="submit" class="btn btn-success btn-block">Sign Up</button>
            </div>
        </form>

        <!-- Login Link -->
        <div class="text-center mt-3">
            <span>Already have an account? <a href="login.jsp" class="text-primary">Log in here</a></span>
        </div>
    </div>
</div>

<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="static/js/aos.js"></script>
<script>
    AOS.init();

    const imgInp = document.getElementById('imgInp');
    const blah = document.getElementById('blah');
    imgInp.onchange = evt => {
        const [file] = imgInp.files;
        if (file) {
            blah.src = URL.createObjectURL(file);
        }
    }
</script>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="static/images/logo.png"/>

    <!-- Custom Styling -->
    <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/css/new-style.css">
</head>

<body>
<div class="limiter">
    <div class="container-login d-flex justify-content-center align-items-center vh-100">
        <div class="login-box shadow rounded" data-aos="fade-right">
            <div class="login-header text-center mb-4">
                <h1 class="login-title">Welcome Back</h1>
                <p class="login-subtitle">Please sign in to continue</p>
            </div>
            <form action="login?status=typed" method="post" class="form-login">
                <div class="form-group">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" name="username" id="username" class="form-control" placeholder="Enter your username">
                </div>

                <div class="form-group">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter your password">
                </div>

                <div class="form-check mb-4">
                    <input type="checkbox" class="form-check-input" id="rememberMe" name="remember-me-checkbox">
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                </div>

                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                </div>
            </form>
            <div class="register-link text-center mt-3">
                <span>Don't have an account? <a href="register.jsp" class="text-primary">Create one here</a></span>
            </div>
        </div>
    </div>
</div>

<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="static/js/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>

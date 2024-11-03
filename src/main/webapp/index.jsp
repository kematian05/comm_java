<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <!-- Hero Section with New Styling -->
    <div class="hero-section" style="background-image: url(static/images/hero_3.png); height: 70vh; background-size: cover; background-position: center; position: relative;">
        <div class="overlay" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.6);"></div>
        <div class="container" style="position: relative; z-index: 2; text-align: center;">
            <div class="row align-items-center justify-content-center h-100">
                <div class="col-md-8">
                    <h1 class="display-4 text-white font-weight-bold">Step Into Style</h1>
                    <p class="lead text-light mb-4">Discover the latest trends and exclusive offers only on VusatCommerce!</p>
                    <a href="shop" class="btn btn-primary btn-lg shadow">Shop Now</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Featured Collections Section -->
    <div class="collections-section py-5 bg-light">
        <div class="container text-center">
            <h2 class="h1 font-weight-bold">Featured Collections</h2>
            <p class="mb-5">Create your own style with our exclusive collections!</p>
            <div class="row">
                <!-- Featured Products Section -->
                <jsp:include page="templates/collections-section.jsp"/>
            </div>
        </div>
    </div>

</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>

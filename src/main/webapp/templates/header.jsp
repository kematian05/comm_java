<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<header class="site-navbar" role="banner">
    <div class="site-navbar-top" style="background-color: #333;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6 col-md-4 order-2 order-md-1 text-left">
                    <!-- Optional search form removed for cleaner layout -->
                </div>

                <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                    <div class="site-logo">
                        <a href="/" class="js-logo-clone" style="font-size: 1.5rem; font-weight: bold; color: #fff;">VusatCommerce</a>
                    </div>
                </div>

                <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                    <div class="site-top-icons">
                        <ul>
                            <c:if test="${sessionScope.account != null}">
                                <li>
                                    <c:if test="${account.base64Image != null}">
                                        <img class="icon" src="data:image/jpg;base64,${account.base64Image}"
                                             id="dropdownMenuReference"
                                             data-toggle="dropdown" alt="Profile Image"
                                             style="width: 2em; border-radius: 50%; margin-right: 15px; cursor: pointer;">
                                    </c:if>

                                    <c:if test="${account.base64Image == null}">
                                        <img class="icon" src="../static/images/blank_avatar.png"
                                             id="dropdownMenuReference"
                                             data-toggle="dropdown" alt="Default Profile"
                                             style="width: 2em; border-radius: 50%; margin-right: 15px; cursor: pointer;">
                                    </c:if>

                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuReference">
                                        <a class="dropdown-item" href="logout">Logout</a>
                                    </div>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.account == null}">
                                <li><a href="login" style="color: #fff;"><span class="icon icon-person"></span></a></li>
                            </c:if>

                            <li>
                                <a href="../cart.jsp" class="site-cart" style="color: #fff;">
                                    <span class="icon icon-shopping_cart"></span>
                                    <c:if test="${order.cartProducts.size() != null}">
                                        <span class="count" style="background-color: #ff6b6b; color: #fff;">${order.cartProducts.size()}</span>
                                    </c:if>
                                </a>
                            </li>

                            <li class="d-inline-block d-md-none ml-md-0">
                                <a href="#" class="site-menu-toggle js-menu-toggle" style="color: #fff;">
                                    <span class="icon-menu"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <nav class="site-navigation text-right text-md-center" role="navigation" style="background-color: #444;">
        <div class="container">
            <ul class="site-menu js-clone-nav d-none d-md-block">
                <li class="${home_active}"><a href="/" style="color: #fff;">Home</a></li>
                <li class="${shop_active}"><a href="shop" style="color: #fff;">Shop</a></li>

                <c:if test="${sessionScope.account != null}">
                    <li class="${order_history_active}"><a href="order-history" style="color: #fff;">Order History</a></li>
                </c:if>

                <c:if test="${sessionScope.account.isSeller == 1}">
                    <li class="${product_management_active}"><a href="product-management" style="color: #fff;">Product Management</a></li>
                    <li class="${order_management_active}"><a href="order-management" style="color: #fff;">Order Management</a></li>
                </c:if>

                <c:if test="${sessionScope.account.isAdmin == 1}">
                    <li class="${websitem_active}"><a href="#" style="color: #fff;">Website Management</a></li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>

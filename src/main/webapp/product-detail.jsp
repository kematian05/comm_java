<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>


    <!-- Product Detail Section -->
    <div class="site-section py-5">
        <div class="container">
            <div class="row align-items-center">
                <!-- Product Image Section -->
                <div class="col-md-6">
                    <div class="product-image">
                        <img src="${product.image}" alt="${product.name}" class="img-fluid rounded" style="border: 2px solid #f0c14b; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);">
                    </div>
                </div>

                <!-- Product Info Section -->
                <div class="col-md-6">
                    <h1 class="text-dark font-weight-bold">${product.name}</h1>
                    <p class="text-muted mb-4">${product.description}</p>
                    <p><strong class="text-danger h4">$${product.price}</strong></p>

                    <!-- Quantity Selection Form -->
                    <form action="cart?product-id=&quantity=" method="get">
                        <div class="d-flex align-items-center mb-3">
                            <input name="product-id" value="${product.id}" type="hidden">
                            <div class="input-group" style="max-width: 200px;">
                                <div class="input-group-prepend">
                                    <button class="btn btn-warning js-btn-minus" type="button">&minus;</button>
                                </div>
                                <input id="quantity" name="quantity" type="text" class="form-control text-center" value="1" style="max-width: 50px;">
                                <div class="input-group-append">
                                    <button class="btn btn-warning js-btn-plus" type="button">&plus;</button>
                                </div>
                            </div>
                            <label class="ml-3 text-black" style="white-space: nowrap;">Available: <strong>${product.amount}</strong></label>
                        </div>
                        <p>
                            <button type="submit" class="btn btn-lg btn-success" ${disabled}>Add To Cart</button>
                        </p>
                    </form>
                </div>
            </div>

            <!-- Stock Alert -->
            <c:if test="${alert}">
                <div class="row justify-content-center mt-3">
                    <div class="alert alert-warning d-flex justify-content-center" role="alert" style="max-width: 800px; min-width: 600px;">
                        <strong class="font-weight-bold">Only ${product.amount} left in stock!</strong>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>

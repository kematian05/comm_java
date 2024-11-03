<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <!-- Cart Section -->
    <div class="site-section py-5">
        <form class="container" method="post" action="checkout">
            <div class="row">
                <c:forEach items="${order.cartProducts}" var="o" varStatus="status">
                    <div class="col-md-12 mb-4">
                        <div class="card border-light shadow-sm">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <img src="${o.product.image}" alt="${o.product.name}" class="card-img" style="object-fit: cover; height: 100%; border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">${o.product.name}</h5>
                                        <p class="card-text">Price: <strong class="text-primary">$${o.price}</strong></p>
                                        <div class="d-flex align-items-center mb-2">
                                            <span class="text-muted">Quantity:</span>
                                            <div class="input-group mx-2" style="max-width: 120px;">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-outline-secondary js-btn-minus" type="button">&minus;</button>
                                                </div>
                                                <input name="product-quantity" type="text" class="form-control text-center" value="${o.quantity}" aria-label="Product Quantity" readonly>
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary js-btn-plus" type="button">&plus;</button>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="card-text"><strong>Total: $${o.price * o.quantity}</strong></p>
                                        <a href="cart?remove-product-id=${o.product.id}" class="btn btn-danger btn-sm">Remove</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <!-- Cart Summary -->
            <div class="row mt-5">
                <div class="col-md-6">
                    <a href="shop" class="btn btn-outline-secondary btn-lg btn-block">Continue Shopping</a>
                </div>
                <div class="col-md-6 text-right">
                    <h3 class="text-dark h4">Cart Totals</h3>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-dark">Total:</span>
                        <span class="text-dark font-weight-bold">$${total_price}</span>
                    </div>
                    <a href="checkout.jsp" class="btn btn-success btn-lg py-3 btn-block">
                        Proceed To Checkout
                    </a>
                </div>
            </div>
        </form>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>

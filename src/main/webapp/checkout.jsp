<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <div class="bg-dark py-4">
        <div class="container text-center">
            <h1 class="text-white mb-2">Checkout Your Items</h1>
            <p class="text-light">Review and finalize your order below.</p>
        </div>
    </div>

    <div class="site-section py-5">
        <div class="container">
            <form method="post" action="checkout" class="checkout-form bg-light p-4 rounded shadow-sm">
                <div class="col-md-12 mb-4">
                    <h2 class="h4 mb-4 text-black">Order Summary</h2>
                    <div class="border p-4 rounded">
                        <div class="order-summary">
                            <c:forEach items="${order.cartProducts}" var="o">
                                <div class="order-item d-flex justify-content-between mb-3">
                                    <div>
                                        <strong>${o.product.name}</strong><br>
                                        <span class="text-muted">Price: $${o.price}</span><br>
                                        <span class="text-muted">Qty: ${o.quantity}</span>
                                    </div>
                                    <div>
                                        <span class="text-black font-weight-bold">Total: $${o.price * o.quantity}</span>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <hr>
                        <div class="order-total d-flex justify-content-between">
                            <h4 class="text-black">Order Total</h4>
                            <strong class="text-black">$${total_price}</strong>
                        </div>
                        <div class="form-group mt-4">
                            <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#billingDetails">
                                Proceed to Billing
                            </button>
                        </div>
                    </div>
                </div>

                <div id="billingDetails" class="collapse mt-4">
                    <h2 class="h4 mb-4 text-black">Billing Information</h2>
                    <div class="border p-4 rounded">
                        <div class="form-group">
                            <label for="first-name" class="text-black">First Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="first-name" name="first-name" value="${account.firstName}" required>
                        </div>
                        <div class="form-group">
                            <label for="last-name" class="text-black">Last Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="last-name" name="last-name" value="${account.lastName}" required>
                        </div>
                        <div class="form-group">
                            <label for="address" class="text-black">Address <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="address" name="address" value="${account.address}" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="text-black">Email Address <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="email" name="email" value="${account.email}" required>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="text-black">Phone <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="phone" name="phone" value="${account.phone}" required>
                        </div>
                        <div class="form-group mt-4">
                            <button type="submit" class="btn btn-success btn-lg btn-block">Place Your Order</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>

<jsp:include page="templates/scripts.jsp"/>
<script>
    // Optional: Script to automatically expand the billing details when the page loads if needed
    // $(document).ready(function() {
    //     $('#billingDetails').collapse('show');
    // });
</script>
</body>
</html>

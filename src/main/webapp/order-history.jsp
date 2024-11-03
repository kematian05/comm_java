<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <div class="site-section py-5" data-aos="fade-in">
        <div class="container">
            <h2 class="h4 text-center mb-4 text-black">Your Order History</h2>
            <div class="row">
                <c:forEach items="${order_list}" var="o">
                    <div class="col-md-6 mb-4">
                        <div class="card shadow-sm border-light">
                            <div class="card-body">
                                <h5 class="card-title">Order ID: ${o.id}</h5>
                                <p class="card-text"><strong>Total:</strong> $${o.total}</p>
                                <p class="card-text"><strong>Date:</strong> ${o.date}</p>
                                <a href="order-detail?order-id=${o.id}" class="btn btn-success">View Details</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>

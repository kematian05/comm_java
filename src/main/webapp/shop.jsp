<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body style="background-color: #f5f7fa; font-family: Arial, sans-serif;">
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <!-- Shop Section -->
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <!-- Main Product List Area -->
                <div class="col-md-9 order-2">
                    <div class="row">
                        <div class="col-md-12 mb-4">
                            <h2 class="text-dark h4 font-weight-bold">Explore Our Unique Collection!</h2>
                            <p class="text-muted">Curated styles to fit every occasion and personality.</p>
                        </div>
                    </div>
                    <div class="row mb-5">
                        <c:forEach items="${product_list}" var="o">
                            <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                                <div class="card shadow-sm border-0 rounded-lg h-100"
                                     style="transition: transform 0.2s ease; background-color: #ffffff;">
                                    <a href="product-detail?id=${o.id}" class="card-img-top d-flex align-items-center justify-content-center"
                                       style="height: 250px; overflow: hidden; background-color: #f8f9fb;">
                                        <img src="${o.image}" alt="${o.name}" class="img-fluid" style="max-height: 220px; width: auto;">
                                    </a>
                                    <div class="card-body text-center">
                                        <h5 class="card-title font-weight-bold text-dark">${o.name}</h5>
                                        <p class="card-text text-secondary">$${o.price}</p>
                                    </div>
                                    <div class="card-footer text-center bg-transparent border-0">
                                        <a href="product-detail?id=${o.id}" class="btn btn-outline-primary btn-sm rounded-pill">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <!-- Pagination -->
                    <div class="row" data-aos="fade-up">
                        <div class="col-md-12 text-center">
                            <nav>
                                <ul class="pagination pagination-pill justify-content-center">
                                    <c:if test="${page_active > 1}">
                                        <li class="page-item">
                                            <a class="page-link bg-light text-primary" href="shop?index=${page_active - 1}" aria-label="Previous">&laquo;</a>
                                        </li>
                                    </c:if>
                                    <c:forEach begin="1" end="${total_pages}" var="i">
                                        <li class="page-item ${page_active == i ? 'active' : ''}">
                                            <a class="page-link ${page_active == i ? 'bg-primary text-white' : 'bg-light text-primary'}"
                                               href="shop?index=${i}">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <c:if test="${page_active < total_pages}">
                                        <li class="page-item">
                                            <a class="page-link bg-light text-primary" href="shop?index=${page_active + 1}" aria-label="Next">&raquo;</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <!-- Sidebar: Categories -->
                <div class="col-md-3 order-1 mb-5 mb-md-0">
                    <div class="border p-4 rounded bg-white shadow-sm mb-4">
                        <h3 class="mb-3 h6 text-uppercase text-dark">Shop by Categories</h3>
                        <ul class="list-unstyled">
                            <c:forEach items="${category_list}" var="o">
                                <li class="mb-2">
                                    <a href="category?category_id=${o.id}" class="btn btn-light btn-block text-left rounded-pill d-flex align-items-center justify-content-between">
                                        <span>${o.name}</span>
                                        <span class="badge badge-primary">${o.totalCategoryProduct}</span>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>

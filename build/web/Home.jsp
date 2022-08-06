<%-- 
    Document   : Home
    Created on : Jul 28, 2022, 10:12:24 PM
    Author     : Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
    <meta charset="utf-8"/>
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="container">
            <div style="margin-bottom:3rem" id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="10000">
                        <img src="content/images/banner1.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="content/images/banner2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="content/images/banner3.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="content/images/banner4.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <h5 style="font-weight:700; margin-top:2rem">SẢN PHẨM</h5>

            <hr />
            <div class="row row-cols-1 row-cols-md-5 g-4">

            <c:forEach items="${listSP}" var="k">
                <div class="col">
                    <div class="card shadow card-hover" style="border-radius:8px">
                        <a href="#">
                            <img src="${k.hinhAnh}" class="card-img-top" alt="${k.hinhAnh}" style="border-radius:8px; margin-top:1rem">
                        </a>
                        <div class="card-body">
                            <h6 class="card-title" style="font-weight:700">${k.tenSanPham}</h6>
                            <p class="card-text" style="color: red; font-weight: 700"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${k.giaBan}" />₫</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
</html>


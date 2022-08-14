<%-- 
    Document   : Home
    Created on : Jul 28, 2022, 10:12:24 PM
    Author     : Hung
--%>

<%@page import="javax.servlet.jsp.jstl.core.Config"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
    <style>
        .card-hover:hover {
            -webkit-transform: scale(1.05, 1.05);
            box-shadow: 0 0.5rem 0.75rem #0d6efd !important;
        }
        .card-title{
            line-height: 1rem;
            width:200px;
            
        }
    </style>
    <meta charset="utf-8"/>
    <jsp:include page="Header.jsp"></jsp:include>

        <div class="container">
            <div style="margin: 4rem 0;" id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
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

            <div id="data" class="row row-cols-1 row-cols-md-5 g-4 mb-3">

            <c:forEach items="${listSPorder}" var="k">
                <div class="col">
                    <div class="card shadow card-hover" style="border-radius:8px">
                        <a href="detail?id=${k.idSanPham}">
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

        <nav aria-label="Page navigation example">
            <ul class="pagination">

                <c:choose>
                    <c:when test="${sessionScope.truocdoSP != 0}">
                        <li class="page-item"><a class="page-link" href="home?idSP=${sessionScope.truocdoSP}">Trước đó</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="page-item disabled"><a class="page-link" href="home?idSP=${sessionScope.truocdoSP}">Trước đó</a></li>
                        </c:otherwise>
                    </c:choose>

                <c:forEach begin="1" end="${countSP}" var="i">
                    <c:choose>
                        <c:when test="${sessionScope.ketiepSP == i+1}">
                            <li class="page-item active"><span class="page-link">${i}</span></li>
                            </c:when>
                            <c:otherwise>
                            <li class="page-item"><a class="page-link" href="home?idSP=${i}">${i}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                <c:choose>
                    <c:when test="${sessionScope.ketiepSP > countSP}">
                        <li class="page-item disabled"><a class="page-link" href="home?idSP=${sessionScope.ketiepSP}">Kế tiếp</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="page-item"><a class="page-link" href="home?idSP=${sessionScope.ketiepSP}">Kế tiếp</a></li>
                        </c:otherwise>
                    </c:choose>
            </ul>
        </nav>

        <hr />
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function ketiep() {
            $.ajax({
                url: "/NStore/phantrang",
                type: "get", //send it through get method

                success: function (data) {
                    var row = document.getElementById("data");
                    row.innerHTML += data;
                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });

        }
    </script>
</html>



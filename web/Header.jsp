<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
        <style>
            *{
                font-family: 'Quicksand', sans-serif
            }
            .logo:hover{
                transform: rotate(-90deg);
            }
            .logo{
                transition:0.3s;
            }
        </style>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-light shadow-sm" style="position: fixed; z-index: 10; top:0; width:100%;">
                <div class="container-fluid">

                    <a class="navbar-brand" href="home">
                        <img  class="logo" src="content/img/logo.svg" style="height:32px; width:32px" alt="Logo" />
                    </a>
                    <a href="WEB-INF/content/img/logo.svg"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li>
                                <a data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary">Bản đồ</a>
                            </li>
                        </ul>


                        <div class="btn-group me-2">
                            <button style="width:160px" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Thương hiệu
                            </button>

                            <ul class="dropdown-menu" style="text-align: center">
                                <c:forEach items="${listHang}" var="hang">
                                    <li class="swiper-slide">
                                        <a href="locsanpham?hang=${hang}">
                                            ${hang}
<!--                                            <img src="content/images/ap.png" style="height:48px; width: 48px" />-->
                                        </a>
                                    </li>
                                </c:forEach>

                                <!--                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Samsung"})">
                                                                        <img src="content/images/ss.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Xiaomi"})">
                                                                        <img src="content/images/op.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Huawei"})">
                                                                        <img src="content/images/rm.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Google"})">
                                                                        <img src="content/images/xm.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Oppo"})">
                                                                        <img src="content/images/vv.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Nokia"})">
                                                                        <img src="content/images/hw.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Sony"})">
                                                                        <img src="content/images/gg.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Vivo"})">
                                                                        <img src="content/images/nk.png" style="height:48px; width: 48px" />
                                                                    </a>
                                                                </li>-->
                            </ul>
                        </div>

                        <form action="search" class="d-flex" enctype="multipart/form-data" >
                            <input name="keyword" style="width:300px" class="form-control me-2" type="search" placeholder="Nhập sản phẩm cần tìm..." aria-label="Search">
                            <button class="btn btn-primary me-3"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                </svg></button>
                        </form>
                        <c:if test="${sessionScope.userrole.getIdRole() != 1}">
                            <a data-bs-toggle="popover" data-bs-trigger="hover focus" data-bs-placement="left" data-bs-content="Giỏ hàng" style="margin-right: 1rem" href="showcart?idUser=${sessionScope.user.id}" class="btn btn-warning position-relative">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                                </svg>

                                <c:if test="${sessionScope.sl != null || sessionScope.sl != 0}">
                                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger btn-danger">${sessionScope.sl}<span class="visually-hidden">unread messages</span></span>
                                </c:if>

                            </a>


                        </c:if>
                        <c:choose>
                            <c:when test="${sessionScope.user != null}">
                                <c:choose>
                                    <c:when test="${sessionScope.userrole.getIdRole() == 1}">
                                        <div class="dropstart">
                                            <button class="btn dropdown-toggle" style="outline: none; border: none;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <img style="height: 42px;width: 42px;border-radius: 50%;"src="content/images/Account.png">
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="info?em=${sessionScope.user.email}">Thông tin tài khoản</a></li>
                                                <li><a class="dropdown-item" href="sanpham">Quản lý website</a></li>
                                                <li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
                                            </ul>
                                        </div>

                                    </c:when>
                                    <c:otherwise>
                                        <div class="dropstart">
                                            <button class="btn dropdown-toggle" style="outline: none; border: none;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <img style="height: 42px;width: 42px;border-radius: 50%;"src="content/images/Account.png">
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="info?em=${sessionScope.user.email}">Thông tin tài khoản</a></li>
                                                <li><a class="dropdown-item" href="lichsu">Lịch sử đặt hàng</a></li>
                                                <li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
                                            </ul>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="Login.jsp" class="btn btn-primary">Đăng nhập</a>
                            </c:otherwise>
                        </c:choose>





                        <!--Gio hang-->
                    </div>
                </div>
            </nav>
        </header>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>
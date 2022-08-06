<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-light shadow-sm" style="position: fixed; z-index: 10; top:0; width:100%;">
                <div class="container-fluid">

                    <a class="navbar-brand" href="#">
                        <img src="content/img/logo.svg" style="height:32px; width:32px" alt="Logo" />
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
                            <button style="width:160px" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Thương hiệu
                            </button>

                            <ul class="dropdown-menu">
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", new { @thuonghieu = "Apple"})">
                                        <img src="~/Content/images/ap.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Samsung"})">
                                        <img src="~/Content/images/ss.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Xiaomi"})">
                                        <img src="~/Content/images/xm.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Huawei"})">
                                        <img src="~/Content/images/hw.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Google"})">
                                        <img src="~/Content/images/gg.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Oppo"})">
                                        <img src="~/Content/images/op.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Nokia"})">
                                        <img src="~/Content/images/nk.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Sony"})">
                                        <img src="~/Content/images/sn.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="@Url.Action("Index", "Home", new { @thuonghieu = "Vivo"})">
                                        <img src="~/Content/images/vv.png" style="height:48px; width: 48px" />
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <form class="d-flex" role="search">
                            <input id="input" name="search" style="width:300px" class="form-control me-2" type="search" placeholder="Nhập sản phẩm cần tìm..." aria-label="Search">
                        </form>


                        <!--Gio hang-->
                    </div>
                </div>
            </nav>
        </header>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>
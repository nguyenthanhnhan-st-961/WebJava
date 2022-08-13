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
            <br>            
            <br>
            <br>
            <br>


            <div>
                <h4>Thông tin sản phẩm</h4>
                <hr />

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

                <div class="row">
                    <div class="col-4">
                        <img class="hinh-hover" src="${sp.hinhAnh}" style="width:100%; height:auto; object-fit:cover" />
                </div>
                <div class="col-3 card" style="padding:1rem; margin-right:1rem">
                    <h6>Thông tin sản phẩm</h6>
                    <hr />
                    <p style="margin:0"><b>Hãng sản phẩm</b></p>
                    <p>${sp.hang}</p>

                    <p style="margin:0"><b>Trạng thái</b></p>

                    <c:choose>
                        <c:when test="${sp.trangThai == true}">
                            <p style="color:green">Còn hàng</p>


                        </c:when>
                        <c:otherwise>
                            <p style="color:red">Hết hàng</p>
                        </c:otherwise>
                    </c:choose>



                    <p style="margin:0"><b>Giá bán</b></p>
                    <h5 class="card-text" style="color:red; font-weight:700;"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sp.giaBan}" />₫</h5>

                </div>
                <div class="col card" style="padding:1rem">
                    <h6>Mô tả</h6>
                    <hr />
                    <p style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 6;overflow: hidden; text-align:justify" class="card-text">${sp.moTa}</p>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-outline-primary mb-3" style="width:100%" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Xem thêm...
                    </button>

                    <c:choose>
                        <c:when test="${sp.trangThai == true}">
                            <c:choose>
                                <c:when test="${sessionScope.idrole == 2}">

                                    <form action="addcart" class="d-flex" enctype="multipart/form-data" >
                                        <input name="id" value="${sessionScope.user.id}" hidden>
                                        <input name="idSP" value="${sp.idSanPham}" hidden>
                                        <input class="btn btn-warning mb-3" type="submit" value="Thêm giỏ hàng">
                                    </form>

                                </c:when>
                                <c:otherwise>
                                    <a class="btn btn-warning mb-3" style="width:100%"
                                       href="sanpham">
                                        Chỉnh sửa sản phẩm
                                    </a>
                                </c:otherwise>
                            </c:choose>


                        </c:when>
                        <c:otherwise>
                            <button class="btn btn-danger mb-3" style="width:100%" disabled>
                                Hết hàng - Liên hệ : 0987654321.
                            </button>
                        </c:otherwise>
                    </c:choose>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">${sp.tenSanPham}</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    ${sp.moTa}
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <h6>Chính sách</h6>
                <hr style="width:80%" />
                <p>Miễn đổi trả, miễn bảo hành</p>


            </div>
        </div>

    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</html>

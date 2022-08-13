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
    <link href="content/bootstrap/signin.css" rel="stylesheet" type="text/css"/>

    <div id ="dt">
        <jsp:include page="Header.jsp"></jsp:include>
            <div style="margin-top: 400px" class="container">

                <table class="table"  >
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Giá bán</th>                        
                            <th scope="col">Thành tiền</th>
                            <th scope="col">Chỉnh sửa</th>
                            <th scope="col">Chi tiết</th>

                        </tr>
                    </thead>
                    <tbody >
                    <c:forEach items="${listGH}" var="s">
                        <tr>
                            <th>
                                <a href="detail?id=${s.idSP}"><img src="${s.hinhAnh}" width="150" height="150" alt="${s.tenSP}"/></a>

                            </th>
                            <td>${s.tenSP} - ${s.idSP}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-secondary">-</button>
                                    <input  id="sl_${s.idSP}" name="sl" style="width: 48px" value="${s.SL}" class="btn btn-outline-secondary">

                                    <button id="tang" type="button" class="btn btn-outline-secondary">+</button>
                                </div>
                            </td>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                    <script type="text/javascript">
                        document.getElementById('sl_${s.idSP}').onchange = function () {
                            var sl = document.getElementById("sl_${s.idSP}").value;
                            $.ajax({
                                url: "/NStore/capnhatgh",
                                type: "get", //send it through get method
                                data: {'sl': sl, 'idsp':${s.idSP}, 'id':${sessionScope.user.id}, 'url': 'showcart?idUser=${sessionScope.user.id}'},
                                success: function (data) {
                                    var row = document.getElementById("dt");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        };

                    </script>

                    <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.donGia}" />₫</td>
                    <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.thanhTien}" />₫</td>
                    <td>
                        <a href="#"><i class="bi bi-pencil-square me-3"></i></a>

                        <i data-bs-toggle="modal" data-bs-target="#_${s.idGioHang}" style="color:red" class="bi bi-x-square"></i>

                        <!-- Modal -->
                        <div class="modal fade" id="_${s.idGioHang}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

                            <form action="xoagh" class="d-flex" enctype="multipart/form-data" >
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Bạn có chắc chắn muốn xóa sản phẩm khỏi giỏ hàng</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <a href="detail?id=${s.idSP}"><img src="${s.hinhAnh}" width="150" height="150" alt="${s.tenSP}"/></a>
                                            <br>
                                            Sản phẩm: ${s.tenSP}<br>
                                            Số lượng: ${s.SL}<br>
                                            Đơn giá: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.donGia}" />₫<br>
                                            Thành tiền: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.thanhTien}" />₫

                                        </div>

                                        <input name="id" value="${sessionScope.user.id}" hidden>
                                        <input name="idSP" value="${s.idSP}" hidden>
                                        <input name="url" value="showcart?idUser=${sessionScope.user.id}" hidden>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                            <button type="submit" class="btn btn-danger">Xác nhận</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </td>
                    <td>
                        <a href="#"><i class="bi bi-info-square"></i></a>
                    </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
                
                
                
                <main class="form-signin w-100 m-auto">
                    <h3>Thông tin đặt hàng</h3>
                    
                    <div style="display: flex">
                        <h6>Khách hàng</h6>: ${sessionScope.user.name}
                    </div>                    
                    <div style="display: flex">
                        <h6>Địa chỉ</h6>: ${sessionScope.user.diaChi}
                    </div>
                    <div style="display: flex">
                        <h6>Số điện thoại</h6>: ${sessionScope.user.phoneNumber}
                    </div>

                    
                    <form action="thanhtoan" enctype="multipart/form-data">
                        <input name="gc" class="form-control" type="text">                    
                    <input name="idUser" value="${sessionScope.user.id}" hidden class="form-control" type="text" required>

                    
                    <button class="w-100 btn btn-lg btn-primary mb-3" type="submit">Xác nhận</button>
                    </form>
                    
                    

                </main>
                
                
                
                
                
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</html>



<%-- 
    Document   : Sanpham
    Created on : Aug 7, 2022, 11:27:31 AM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body class="container" style="margin-top: 2rem">

        <form action="editsanpham" enctype="multipart/form-data">

            <input value="${sp.idSanPham}" type="text" class="form-control" name="id" hidden>

            <div class="mb-3">
                <label class="form-label">Tên sản phẩm</label>
                <input value="${sp.tenSanPham}" type="text" class="form-control" name="tensp">
            </div>

            <div class="mb-3">
                <label class="form-label">Hình Ảnh</label>
                <input value="${sp.hinhAnh}" type="text" class="form-control" name="hinhanh">
            </div>

            <select value="${sp.hang}" name="hang" class="form-select mb-3" aria-label="Default select example">
                <option selected>Chọn hãng</option>
                <option value="Oppo">Oppo</option>
                <option value="Apple">Apple</option>
                <option value="Samsung">Samsung</option>
                <option value="Xiaomi">Xiaomi</option>
                <option value="Realme">Realme</option>
                <option value="Vivo">Vivo</option>
            </select>

            <div class="mb-3">
                <label class="form-label">Giá bán</label>
                <input value="${sp.giaBan}" type="number" class="form-control" name="giaban">
            </div>

            <div class="mb-3">
                <label class="form-label">Mô tả</label>
                <textarea type="text" style="height: 15rem" class="form-control" name="mota">${sp.moTa}</textarea>
            </div>

            <div class="form-floating mb-3">
                <select style="height: 4rem" class="form-select" id="inputGroupSelect01" name="trangthai" required>
                    <option selected>Trạng thái</option>
                    <c:choose>
                        <c:when test="${sp.trangThai==false}">
                            <option selected value="false">Hết hàng</option>
                        </c:when>
                        <c:otherwise>
                            <option value="false">Hết hàng</option>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${sp.trangThai==true}">
                            <option selected value="true">Còn hàng</option>
                        </c:when>
                        <c:otherwise>
                            <option value="true">Còn hàng</option>
                        </c:otherwise>
                    </c:choose>
                </select>
                <label for="inputGroupSelect01">Trạng thái</label>
            </div>

            <div class="modal-footer">
                <a type="button" href="sanpham" class="btn btn-secondary">Hủy</a>
                <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
            </div>
        </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>

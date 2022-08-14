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
        <style>
            .logo:hover{
                transform: rotate(-90deg);
            }
            .logo{
                transition:0.3s;
            }
        </style>
    </head>

    <body class="container" style="margin-top: 2rem">
        <div style="margin-bottom: 1rem">
            <a href="home">
                <img class="logo" src="content/img/logo.svg" style="height:32px; width:32px" alt="Logo">
            </a>
        </div>
        <div class="row">
            <div class="col-3">
                <a style="width: 100%" class="btn btn-primary mb-3" href="sanpham">Danh sách sản phẩm</a>                
                <a style="width: 100%" class="btn btn-primary mb-3" href="addsanpham">Thêm sản phẩm</a>                
                <a style="width: 100%" class="btn btn-primary mb-3" href="thongke">Thống kê</a>                
              
            </div>            
            <div class="col">

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Thêm sản phẩm
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Thêm sản phẩm</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <form action="addsanpham" method="post" enctype="multipart/form-data">


                                    <div class="mb-3">
                                        <label class="form-label">Tên sản phẩm</label>
                                        <input type="text" class="form-control" name="tensp">
                                    </div>


                                    <div class="input-group mb-3">
                                        <input placeholder="Hình ảnh" style="height: 4rem" type="file" class="form-control" id="image" name="image" accept="image/*" onchange="ImagesFileAsURL()"/>
                                        <label style="height: 4rem" class="input-group-text" for="image">Hình ảnh</label>
                                    </div>

                                    <div id="displayImg">
                                    </div>
                                    <script type="text/javascript">
                                        function ImagesFileAsURL() {
                                            var fileSelected = document.getElementById('image').files;
                                            if (fileSelected.length > 0) {
                                                var fileToLoad = fileSelected[0];
                                                var fileReader = new FileReader();
                                                fileReader.onload = function (fileLoaderEvent) {
                                                    var srcData = fileLoaderEvent.target.result;
                                                    var newImage = document.createElement('img');
                                                    newImage.src = srcData;
                                                    document.getElementById('displayImg').innerHTML = newImage.outerHTML;
                                                }
                                                fileReader.readAsDataURL(fileToLoad);
                                            }
                                        }
                                    </script>

                                    <select name="hang" class="form-select mb-3" aria-label="Default select example">
                                        <option selected>Chọn hãng</option>
                                        <option value="Oppo">Oppo</option>
                                        <option value="Iphone">Apple</option>
                                        <option value="Samsung">Samsung</option>
                                        <option value="Xiaome">Xiaome</option>
                                        <option value="Realme">Realme</option>
                                        <option value="Vivo">Vivo</option>
                                    </select>

                                    <div class="mb-3">
                                        <label class="form-label">Giá bán</label>
                                        <input type="number" class="form-control" name="giaban">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Mô tả</label>
                                        <textarea type="text" style="height: 5rem" class="form-control" name="mota"></textarea>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                        <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                                    </div>
                                </form>

                            </div>

                        </div>
                    </div>
                </div>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Sản phẩm</th>
                            <th scope="col">Giá bán</th>
                            <th scope="col">Hãng</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Sửa</th>

                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${listAdSP}" var="s">
                            <tr>
                                <th scope="row">1</th>
                                <td>
                                    <img style="height: 150px; width: 150px; object-fit: cover" src="${s.hinhAnh}" alt="${s.tenSanPham}">
                                </td>
                                <td>${s.tenSanPham}</td>
                                <td><h6 style="color: red"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.giaBan}" />₫</h6>
                                </td>
                                <td>${s.hang}</td>


                                <td><p style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 6;overflow: hidden;" class="card-text">${s.moTa}</p></td>
                                <td>${s.trangThai}</td>
                                <td><a href="loadsanpham?id=${s.idSanPham}" ><i class="bi bi-pencil-square"></i></a></td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>

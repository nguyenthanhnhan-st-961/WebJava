<%-- 
    Document   : GioHang
    Created on : Aug 8, 2022, 3:54:06 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body >

        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <br>            
                <br>
                <br>
                <br>
                <br>            
                <br>
                <br>
                <br>
                <h4>Giỏ hàng</h4>
                <table class="table">
                <c:forEach items="${listGH}" var="s">
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
            </table>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

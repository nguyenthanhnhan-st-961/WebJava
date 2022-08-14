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
    <div class="container" style="margin-top: 70px">
        
        <h4>Lịch sử đặt hàng</h4>
        
        <table class="table" >
                    <thead>
                        <tr>
                            <th scope="col">Ngày đặt</th>
                            <th scope="col"></th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Giá bán</th>                        
                            <th scope="col">Thành tiền</th>
                            <th scope="col">Trạng thái</th>
                            

                        </tr>
                    </thead>
                    <tbody >
                    <c:forEach items="${list}" var="s">
                        <tr>
                            <td>${s.ngaydat}</td>
                            <th>
                                <a href="detail?id=${s.idSP}"><img src="${s.hinhAnh}" width="150" height="150" alt="${s.tenSP}"/></a>

                            </th>
                            <td>${s.tenSP} - ${s.idSP}</td>
                            <td>
                                ${s.SL}
                            </td>

                    <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.donGia}" />₫</td>
                    <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${s.thanhTien}" />₫</td>

                    
                    <td>
                        ${s.trangthai}

                    </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        
        
    </div>
<jsp:include page="Footer.jsp"></jsp:include>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</html>



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

            
            <h3>Thông tin tài khoản</h3>
            
            <h4>Email: </h4>
            <p>${us.email}</p>
            
            <h4>Họ tên: </h4>
            <p>${us.name}</p>
            
            <h4>Số điện thoại: </h4>
            <p>${us.phoneNumber}</p>
            
            <h4>Địa chỉ: </h4>
            <p>${us.diaChi}</p>

        </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</html>



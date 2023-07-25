<%-- 
    Document   : user
    Created on : May 29, 2023, 4:44:26 PM
    Author     : Thanh An
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link rel="stylesheet" href="run.css"/>
    </head>
    <body class="car6">
        <h1>User's information</h1>
        <c:if test="${sessionScope.LOGIN_USER==null||sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        User ID:${sessionScope.LOGIN_USER.userID}</br>
        Full Name:${sessionScope.LOGIN_USER.fullName}</br>
        Role ID:${sessionScope.LOGIN_USER.roleID}</br>
        Password:${sessionScope.LOGIN_USER.password}</br>
    </body>
</html>

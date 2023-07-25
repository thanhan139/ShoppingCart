<%-- 
    Document   : admin
    Created on : May 29, 2023, 4:44:16 PM
    Author     : Thanh An
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="run.css"/>
    </head>
    <body class="hinh1">
        <div style="text-align: center">
            <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
                <c:redirect url="login.html"></c:redirect>
            </c:if>
            <h1 style="color: blueviolet">Admin Page</h1>
            <div style="color: coral">
                Welcome:${sessionScope.LOGIN_USER.fullName}
            </div>
            </br><a href="MainController?action=Logout" style="color: coral">Logout</a>
            </br><form action ="MainController" method="POST">
                <input type="submit" name="action" value="Logout" style="color: black"/>
            </form>
            </br>
            <c:url var="LogoutLink" value="MainController">
                <c:param name="action" value="Logout"></c:param>
            </c:url>
            </br><a href="${logoutLink}" style="color:#66ff00">Logout JSTL</a>
            <form action ="MainController">
                <div style="color: lightcyan">
                    Search<input type="text" name="search" value="${param.search}"/>
                    <input type="submit" name="action" value="Search" />
                </div>
            </form>
            <br>
            <c:if test="${requestScope.LIST_USER !=null}">
                <c:if test="${not empty requestScope.LIST_USER}">
                    <table border="1" style="border: 1px solid black; margin-left: auto; margin-right: auto">
                        <thead>
                            <tr>
                                <th style="padding: 25px; padding-right: 25px">No</th>
                                <th>User ID</th>
                                <th>Full Name</th>
                                <th>Role ID</th>
                                <th>Password</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${requestScope.LIST_USER}" varStatus="counter">
                            <form action="MainController" method="POST">
                                <tr>
                                    <td style="color: gold">${counter.count}</td>
                                    <td>
                                        <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                    </td>
                                    <td>
                                        <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                    </td>
                                    <td>
                                        <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                    </td>
                                    <td style="color: fuchsia">${user.password}</td>
                                    <td>
                                        <input type="submit" name="action" value="Update" style="color: violet">
                                        <input type="hidden" name="search" value="${param.search}">
                                    </td>
                                    <td>
                                        <c:url var="deleteLink" value="MainController">
                                            <c:param name="action" value="Delete"></c:param>
                                            <c:param name="userID" value="${user.userID}"></c:param>
                                            <c:param name="search" value="${param.search}"></c:param>
                                        </c:url>
                                        <a href="${deleteLink}" style="color: wheat">Delete</a>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:if>
            </c:if>
            ${sessionScope.ERROR}
        </div>
    </body>
</html>

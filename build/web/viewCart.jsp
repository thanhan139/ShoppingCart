<%-- 
    Document   : viewCart
    Created on : Jun 16, 2023, 4:15:56 PM
    Author     : Thanh An
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="sample.shopping.Clothes"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your selected Clothes</title>
        <link rel="stylesheet" href="run.css"/>
    </head>
    <body class="car1">
        <h1>You have selected the clothes</h1> 
        <c:set var="cart" value="${sessionScope.CART}" />
        <c:if test="${not empty cart}">
            <c:if test="${fn:length(cart.cart) > 0}">
                <table border="1" style="border:1px solid black;margin-left: auto; margin-right: auto">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Edit</th>
                            <th>Remove</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="clothes" items="${cart.cart}" varStatus="counter">
                            <c:set var="total" value="${total + clothes.value.quantity * clothes.value.price}" />
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${counter.count}</td>

                                <td>
                                    <input type="text" name="id" value="${clothes.value.id}" readonly=""/>
                                </td>

                                <td>${clothes.value.name}</td>
                                <td>${clothes.value.price} $</td>

                                <td>
                                    <input type="number" name="quantity" value="${clothes.value.quantity}" min="1" required=""/>
                                </td>

                                <td>
                                    <input type="submit" name="action" value="Edit"/>
                                </td>

                                <td>
                                    <input type="submit" name="action" value="Remove"/>
                                </td>

                                <td>${clothes.value.quantity * clothes.value.price}</td>
                            </tr>
                        </form>
                    </c:forEach>
                    <c:set var="TOTAL" value="${total}" scope="session" />
                </tbody>
            </table>
            <h1 style="text-align: center">Total: ${total}$</h1>
        </c:if>
    </c:if>
            </br><a href="shopping.html" style="align-items: center">Add more</a>
    <h1 class="message">${requestScope.MESSAGE_BUY}</h1>

</body>
</html>

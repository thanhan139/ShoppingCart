<%-- 
    Document   : login
    Created on : Jun 17, 2023, 2:13:39 PM
    Author     : Thanh An
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="run.css"/>
    </head>
    <body>
        Input your information: 
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""/></br>
            Password<input type="password" name="password" required=""/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>       
        </form>
        <a href="MainController?action=CreatePage">Create user</a>
        </br><a href="MainController?action=shoppingPage">An's Store</a>
        ${requestScope.ERROR}
    </body>
</html>

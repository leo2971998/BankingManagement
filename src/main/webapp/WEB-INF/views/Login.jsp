<%--
  Created by IntelliJ IDEA.
  User: Anh Tu Nguyen
  Date: 9/30/2022
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<html>
<head>
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/styles/style.css">
</head>
<body>
<body>
<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <f:form id="login-form" class="form" action="/validatelogin" method="post" modelAttribute="Login">
                        <h3 class="text-center text-info">Sign In</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Username:</label><br>
                            <f:input path="loginID" id="username" class="form-control" placeholder="User Name"/>
                            <f:errors path="loginID"/>
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label><br>
                            <f:input path="password" id="password" type="password" class="form-control" placeholder="Password"/>
                            <f:errors path="password"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-control" value = "Sign In">
                        </div>
                        <div class="form-group" style = "text-align: center">
                            <a href="/register" class="container-xxl bg-warning">Register here</a>
                        </div>
                    </f:form>
                    <a:out value="${msg}"></a:out>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>

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
    <title>Register</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/styles/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
<body>
<div id="register">
    <div class="container">
        <div id="register-row" class="row justify-content-center align-items-center">
            <div id="register-column" class="col-md-6">
                <div id="register-box" class="col-md-12">
                    <f:form id="login-form" class="form" action="/validatesignup" modelAttribute="Login">
                        <h3 class="text-center text-info">Sign Up</h3>
                        <a:out value="${msg}"></a:out>
                        <div class="form-group">
                            <label for="username" class="text-info">Username:</label><br>
                            <f:input path="loginID" id="username" class="form-control" placeholder="User Name"
                                     cssClass="col-md-6"/>
                            <f:errors path="loginID" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label><br>
                            <f:input path="password" id="password" cssClass="col-md-6" type="password"
                                     class="form-control" placeholder="Password"/>
                            <f:errors path="password" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="firstName" class="text-info">First Name:</label><br>
                            <f:input path="firstName" id="firstName" cssClass="col-md-6" class="form-control"
                                     placeholder="First Name"/>
                            <f:errors path="firstName" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="text-info">Last Name:</label><br>
                            <f:input path="lastName" id="lastName" cssClass="col-md-6" class="form-control"
                                     placeholder="Last Name"/>
                            <f:errors path="lastName" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="fatherName" class="text-info">Father Name:</label><br>
                            <f:input path="fatherName" id="fatherName" cssClass="col-md-6" class="form-control"
                                     placeholder="Father Name"/>
                            <f:errors path="fatherName" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="motherName" class="text-info">Mother Name:</label><br>
                            <f:input path="motherName" id="motherName" cssClass="col-md-6" class="form-control"
                                     placeholder="Mother Name"/>
                            <f:errors path="motherName" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="datepicker" class="text-info">Date of Birth:</label><br>
                            <f:input path="dob" id="datepicker" cssClass="col-md-6"
                                     class="form-control" type="date"/>
                            <f:errors path="dob" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="qualification" class="text-info">Qualification:</label><br>
                            <f:select path="qualification" cssClass="col-md-6" id="qualification" class="form-control">
                                <f:option value="Graduate" label="Graduate"/>
                                <f:option value="PostGraduate" label="PostGraduate"/>
                            </f:select>
                            <f:errors path="qualification" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="address1" class="text-info">Address Line 1:</label><br>
                            <f:input path="address1" id="address1" cssClass="col-md-6" class="form-control"
                                     placeholder="Address Line 1"/>
                            <f:errors path="address1" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="address2" class="text-info">Address Line 2:</label><br>
                            <f:input path="address2" id="address2" cssClass="col-md-6" class="form-control"
                                     placeholder="Address Line 2"/>
                            <f:errors path="address2" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="city" class="text-info">City:</label><br>
                            <f:input path="city" id="city" cssClass="col-md-6" class="form-control" placeholder="City"/>
                            <f:errors path="city" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="state" class="text-info">State:</label><br>
                            <f:input path="state" id="state" cssClass="col-md-6" class="form-control"
                                     placeholder="State"/>
                            <f:errors path="state" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <label for="country" class="text-info">Country:</label><br>
                            <f:input path="country" id="country" cssClass="col-md-6" class="form-control"
                                     placeholder="Country"/>
                            <f:errors path="country" cssClass="col-md-5"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-control" value="Register">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <a href="/" class="container-xxl bg-warning">Already have an account?/Sign In Here</a>
                        </div>
                    </f:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>

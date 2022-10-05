<%--
  Created by IntelliJ IDEA.
  User: Anh Tu Nguyen
  Date: 9/19/2022
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="shortcut icon" type="x-icon" href="/images/favicon.ico">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/styles/styles.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Banking Management</title>
</head>
<body>

<section class="tri-header">
  <nav>
    <div class="nav-links">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="/addCustomer">Add Customer</a></li>
        <li><a href="/modifycustomer">Modify Customer</a></li>
        <li><a href="/viewcustomer">View Customers</a></li>
        <li><a href="/">Log Out</a></li>
      </ul>
    </div>
  </nav>
  <f:form class="bank-form" action="/modifycustomer/update" modelAttribute="Customer" id = "form1">
    <h1 class="bank-title">Modify Customer:</h1>
    <div class="texts">
      <div class="divrow">
        <div class="column" style="background-color:#a76d6d;">
          <table>
            <tr>
              <th>Customer ID</th>
              <th>
                <f:select path="customerID" name = "customerID">
                  <a:forEach var = "a" items = "${cList}">
                    <f:option value="${a.customerID}">${a.customerID}</f:option>
                  </a:forEach>
                </f:select>
              </th>
              <th><td><input type="submit" id = "fetch" value="Fetch" formaction="getCustomerById" hidden="hidden"></td></th>
            </tr>
            <tr>
              <th>First Name</th>
              <th><f:input path="firstName"/></th>
              <th><f:errors path="firstName"/></th>
            </tr>
            <tr>
              <th>Last Name</th>
              <th><f:input path="lastName"/></th>
              <th><f:errors path="lastName"/></th>
            </tr>
            <tr>
              <th>Email</th>
              <th><f:input path="email"/></th>
              <th><f:errors path="email"/></th>
            <tr>
            <tr>
              <th>Date of Birth</th>
              <th><f:input path="Dob" type="text" id="datepicker" name="datepicker"/></th>
              <th><f:errors path="Dob"/></th>
            </tr>
            <tr>
              <th>Phone Number</th>
              <th><f:input path="phoneNumber"/></th>
              <th><f:errors path="phoneNumber"/></th>
            </tr>
            <td>
              <button type="submit" class="btn btn-success">Update Customer</button>
            </td>
            <td>
              <button type="reset" class="btn btn-danger" value="Reset">Reset</button>
            </td>
            </tr>
            <a:out value="${msg}"></a:out>
          </table>
        </div>
      </div>
    </div>
    </div>
  </f:form>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
    $(function () {
      $("#datepicker").datepicker({dateFormat: 'dd/mm/yy'});
    });
  </script>
  <script>
    $('#form1 select').on('change', function() {
        document.getElementById('fetch').click();
    });
  </script>
</section>
</body>
</html>

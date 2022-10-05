<%--
  Created by IntelliJ IDEA.
  User: Anh Tu Nguyen
  Date: 9/9/2022
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/styles/styles.css">
    <title>Bank Management</title>
</head>
<body>

<section class="tri-header">
    <nav>
        <div class="nav-links">
            <ul>
                <li><a href="/addCustomer">Add Customer</a></li>
                <li><a href="/modifycustomer">Modify Customer</a></li>
                <li><a href="/viewcustomer">View Customers</a></li>
                <li><a href="/">Log Out</a></li>
            </ul>
        </div>
    </nav>
    <div class="text-box">
        <h1>Welcome Admin!</h1>
    </div>

    </div>
    </div>
    <script src='https://code.jquery.com/jquery-3.6.1.min.js
        '></script>
    <script>
        $('.message a').click(function(){
            $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        });
    </script>
</section>
</body>
</html>

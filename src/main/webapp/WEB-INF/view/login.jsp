<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <meta charset="utf-8">
    <link href="resources/css/bootstrap.css" rel="stylesheet">

    <link href="resources/css/creative.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">

    <link href="resources/css/background.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <title>Login</title>
</head>
<body>

<%@include file="header.jsp" %>

<div class="container whiteHeader">
    <h1 class="page-header">Login</h1>
    <div align="center">
        <form class="form-horizontal" method="POST" action="login" modelAttribute="loginForm">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="username">Username:</label>
                    <div class="col-md-4">
                        <input id="username" name="username" type="text" placeholder="Username"
                               class="booking-input form-control input-sm" value="${user.username}" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="password">Password:</label>
                    <div class="col-md-4">
                        <input id="password" name="password" type="password" placeholder="Password"
                               class="booking-input form-control input-sm" value="${user.password}" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <button type="submit" id="submit" name="submit" class="btn btn-primary btn-xl">Login</button>
                    </div>
                </div>
        </form>
    </div>
</div>
<script src="resources/js/jquery.js"></script>
<script src="resources/js/creative.min.js"></script>
</body>
</html>
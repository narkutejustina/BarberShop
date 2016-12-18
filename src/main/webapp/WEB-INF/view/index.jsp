<!DOCTYPE HTML>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Barbershop</title>

        <link href="resources/css/bootstrap.css" rel="stylesheet">
        <link href="resources/css/barber.css" rel="stylesheet">

        <script href="static/js/bootstrap.js"></script>
        <script href="static/js/npm.js"></script>
    </head>
    <body>
    <div id = "wrapper">
        <img src="resources/images/background.jpg" id="background" alt="">
        <div role="navigation">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="/home"
                           class="pull-left"><img src="resources/images/logo.png" id="logo" alt="barbershop"></a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/home">
                            <span class="glyphicon glyphicon-home"></span>
                        </a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Prices</a></li>
                        <li><a href="#">Staff</a></li>
                        <li><a href="#">Contacts</a></li>
                        <li><a href="/booking">Online Booking</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    </body>
</html>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Booking</title>

    <link href="resources/css/booking/booking.css" rel="stylesheet">
    <link href="resources/css/booking/onlineBooking.css" rel="stylesheet">
   <link href="resources/css/bootstrap.css" rel="stylesheet">

    <link href="resources/css/creative.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="intro-header well well-sm panel-body">
                <section class="main">
                    <h1> Your Booking Information</h1>
                    <br/>
                    <h3>Appointment: ${date} ${time}</h3>
                    <h3> Barber: ${barber}</h3>
                    <h3> Service Info: ${taskInfo}  ${price} &euro;</h3>
                    <br/>
                    <h3> Client: ${name} ${lastname}</h3>
                    <h3> Phone: ${phone}</h3>
                    <h3> Email: ${email}</h3>
                </section>
            </div>
        </div>
        <div class="col-md-6"> 
        </div>
    </div>
</div>
</body>
<script src="resources/js/jquery.js"></script>

</html>

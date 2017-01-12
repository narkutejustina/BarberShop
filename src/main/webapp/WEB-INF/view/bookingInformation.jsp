<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Booking</title>

    <link href="resources/css/background.css" rel="stylesheet">
    <link href="resources/css/booking/booking.css" rel="stylesheet">

</head>
<body>
<%@include file="header.jsp" %>

<div class="intro-header ">
    <section class="main">
        <h1> Your Booking Information</h1>
        <br/>
        <h3>Appointment:${date} ${time}</h3>
        <%--<h3> Barber: ${barberName}</h3>--%>
        <h3> Service Info: ${taskInfo}  ${price} &euro;</h3>
        <br/>
        <h3> Client: ${name} ${lastname}</h3>
        <h3> Phone: ${phone}</h3>
        <h3> Email: ${email}</h3>
    </section>
</div>
</body>
<script src="resources/js/jquery.js"></script>

</html>

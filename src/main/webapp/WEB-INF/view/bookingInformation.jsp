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
        <h2> ${firstName}</h2>
        <h2> ${lastName}</h2>
        <h2> ${phone}</h2>
        <h2> ${email}</h2><br/>
        <h2> ${barber}</h2>
        <h2> ${taskInfo}</h2>
        <br/>
        <h2> ${date} ${time}</h2>
        <br/>
        <h2> ${duration}min  ${price} &euro;</h2>
    </section>
</div>
</body>
<script src="resources/js/jquery.js"></script>

</html>

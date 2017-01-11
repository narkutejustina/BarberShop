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
        <h1>Bookings</h1>
        <div class="form-group">
            <label class="col-sm-offset-3 col-sm-2" >Services:</label>
            <div class="col-sm-3">
                    <c:forEach var="booking" items="${bookings}">
                       <h3>${booking.clientId} ${booking.date} ${booking.Time} ${booking.taskId} ${booking.barberId}</h3>
                    </c:forEach>
                </select>
            </div>
        </div>
        </section>
    </div>
</body>
</html>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/creative.css" rel="stylesheet">

    <link href="resources/css/font-awesome.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>

    <link href="resources/css/barber.css" rel="stylesheet">
    <link href="resources/css/background.css" rel="stylesheet">

    <title>Staff</title>
</head>
<body>

<%@include file="header.jsp" %>

<div class="container whiteHeader">
    <h1 class="page-header">Our Staff</h1>

    <div class="col-lg-4 col-sm-6 text-center">
        <img class="img-circle img-responsive img-center staff" src="resources/images/staff1.jpg" alt="">
        <h3>Kevin
            <small class="barbers">MASTER BARBER | STYLIST | EDUCATOR</small>
        </h3>
        <p>Kevin is a Georgia native who found his passion for hair through monthly trips to the barbershop with
            his father during his childhood. He was fascinated by the way a true barbershop operated, seeing people
            being transformed right before his eyes.</p>
    </div>

    <div class="col-lg-4 col-sm-6 text-center">
        <img class="img-circle img-responsive img-center staff" src="resources/images/staff2.jpg" alt="">
        <h3>Matt
            <small class="barbers">STYLIST</small>
        </h3>
        <p>Growing up, Vante experienced living on both the east and west coasts of the United States in South Carolina,
            Georgia and California. Moving around the country exposed Vante to the diversity this country offers. His
            travels provided him an education you could never get from a university. </p>
    </div>

    <div class="col-lg-4 col-sm-6 text-center">
        <img class="img-circle img-responsive img-center staff" src="resources/images/staff3.jpg" alt="">
        <h3>Phil
            <small class="barbers">MASTER BARBER</small>
        </h3>
        <p>A former Georgia State music student, Christian recently graduated from barber school. His passion for men's
            grooming has been evident for nearly a year as he worked at The Shave while he attended barber school. </p>
    </div>

</div>


<%--<div class="container" align="center" style="width:80%">--%>
    <%--<div class="btn-group btn-group-justified" role="group" aria-label="...">--%>
        <%--<c:forEach var="barber" items="${barbers}">--%>
            <%--<div class="btn-group" role="group">--%>
                <%--<c:choose>--%>
                    <%--<c:when test="${barberInfo.barberId == barber.barberId}">--%>
                        <%--<a href="staffs?id=${barber.barberId}" type="button"--%>
                           <%--class="btn btn-primary">${barber.firstName} ${barber.lastName}</a>--%>
                    <%--</c:when>--%>
                    <%--<c:otherwise>--%>
                        <%--<a href="staffs?id=${barber.barberId}"--%>
                           <%--class="btn btn-default">${barber.firstName} ${barber.lastName}</a>--%>
                    <%--</c:otherwise>--%>
                <%--</c:choose>--%>
            <%--</div>--%>
        <%--</c:forEach>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div align="center">--%>
    <%--<h2>--%>
        <%--<span class="glyphicon glyphicon-user" aria-hidden="true"></span>--%>
        <%--${barberInfo.firstName}--%>
        <%--${barberInfo.lastName}--%>
    <%--</h2>--%>
    <%--<h4>--%>
        <%--<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>--%>
        <%--${barberInfo.phone}--%>
    <%--</h4>--%>
    <%--<h4>--%>
        <%--<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>--%>
        <%--${barberInfo.email}--%>
    <%--</h4>--%>
<%--</div>--%>

<%--<div class="container" align="center">--%>
    <%--<h2>Working hours</h2>--%>
    <%--<table class="table table-striped" style="width:50%">--%>
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<th>Weekday</th>--%>
            <%--<th>Working</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>

        <%--<c:forEach var="workHour" items="${workHours}">--%>
            <%--<tr>--%>
                <%--<td> ${workHour.dayOfWeek} </td>--%>
                <%--<td> ${workHour.start} - ${workHour.end} </td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        <%--</tbody>--%>
    <%--</table>--%>
<%--</div>--%>

<script src="resources/js/jquery.js"></script>

<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/creative.min.js"></script>

</body>
</html>

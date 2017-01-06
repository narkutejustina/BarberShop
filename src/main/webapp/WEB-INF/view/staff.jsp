<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <meta charset="utf-8">
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/barber.css" rel="stylesheet">

    <script href="static/js/bootstrap.js"></script>
    <script href="static/js/npm.js"></script>

    <title>Staff</title>
</head>
<body>

    <%@include file="header.jsp" %>

    <div class="container" align="center" style="width:80%">
        <div class="btn-group btn-group-justified" role="group" aria-label="...">
            <c:forEach var="barber" items="${barbers}">
                <div class="btn-group" role="group">
                    <c:choose>
                        <c:when test="${barberInfo.barberId == barber.barberId}">
                            <a href="staffs?id=${barber.barberId}" type="button" class="btn btn-primary">${barber.firstName} ${barber.lastName}</a>
                        </c:when>
                        <c:otherwise>
                            <a href="staffs?id=${barber.barberId}" class="btn btn-default">${barber.firstName} ${barber.lastName}</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </c:forEach>
        </div>
    </div>

    <div align="center">
    <h2>
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
        ${barberInfo.firstName}
        ${barberInfo.lastName}
    </h2>
    <h4>
        <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
        ${barberInfo.phone}
    </h4>
    <h4>
        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
        ${barberInfo.email}
    </h4>
    </div>


    <div class="container" align="center">
        <h2>Working hours</h2>
        <table class="table table-striped" style="width:50%">
            <thead>
            <tr>
                <th align="right">Weekday</th>
                <th>Working</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="workHour" items="${workHours}">
                <tr>
                    <td> ${workHour.dayOfWeek} </td>
                    <td> ${workHour.start} - ${workHour.end} </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>








</body>
</html>

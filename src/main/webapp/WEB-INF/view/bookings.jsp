<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>

<c:if test="${empty sessionScope.logged_user}">
    <% response.sendRedirect("login"); %>
</c:if>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Booking</title>

    <link href="resources/css/background.css" rel="stylesheet">
    <link href="resources/css/booking/booking.css" rel="stylesheet">
</head>
<body>

<%@include file="header.jsp" %>

    <div class="container">
        <table class="table table-sm table-hover table-responsive bookingsTable" >
            <thead>
            <tr>
                <th>#</th>
                <th>Date</th>
                <th>Time</th>
                <th>First Name</th>
                <th>Last Name</th>
                <%--<th>Barber</th>--%>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="booking" items="${bookings}" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index}</th>
                    <td>${booking.getKey().date}</td>
                    <td>${booking.getKey().time}</td>
                    <td>${booking.getValue().firstName}</td>
                    <td>${booking.getValue().lastName}</td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</body>
</html>
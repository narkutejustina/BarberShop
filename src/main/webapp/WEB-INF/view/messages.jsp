<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>

<c:if test="${empty sessionScope.logged_user}">
    <% response.sendRedirect("login"); %>
</c:if>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Messages</title>

    <link href="resources/css/background.css" rel="stylesheet">
    <link href="resources/css/booking/booking.css" rel="stylesheet">
    <link href="resources/css/creative.css" rel="stylesheet">
    <%--CSS for dropdown selector--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css">

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-select.js"></script>

</head>
<body>

<%@include file="header.jsp" %>

<div class="container">
    <div class="well well-sm">
        <table id="mytable" class="table table-sm table-hover table-responsive bookingsTable" >
            <thead>
            <tr>
                <th>#</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Comment</th>
            </tr>
            </thead>
            <tbody>

                <c:forEach var="messages" items="${messages}" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index+1}</th>
                        <td>${messages.firstName}</td>
                        <td>${messages.lastName}</td>
                        <td>${messages.phone}</td>
                        <td>${messages.email}</td>
                        <td>${messages.comment}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="resources/js/creative.min.js"></script>
</body>
</html>
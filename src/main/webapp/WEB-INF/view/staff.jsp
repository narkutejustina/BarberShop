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

<div class="btn-group btn-group-justified" role="group" aria-label="...">
    <c:forEach var="barber" items="${barbers}">
        <div class="btn-group" role="group">
            <button type="button" class="btn btn-default">${barber.firstName} ${barber.lastName}</button>
        </div>
    </c:forEach>
</div>



</body>
</html>

<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Test</title>

    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/creative.css" rel="stylesheet">

    <link href="resources/css/background.css" rel="stylesheet">
</head>
<body>

    <%@include file="header.jsp" %>

    <form class="main" method="post" action="savebooking">
        <div class="container">
            <input id="firstname" name="firstname" type="text" placeholder="First name" required class="form-control input-sm">

            <input id="lastname" name="lastname" type="text" placeholder="Last name" required
                   class="form-control input-sm">

            <input id="email" name="email" type="email" placeholder="Email" required class="form-control input-sm">

            <input id="phone" name="phone" type="text" placeholder="Phone" required class="form-control input-sm">

            <input id="tasks" name="tasks" type="text" placeholder="TaskId"  class="form-control input-sm">

            <%--<div class="dropdown">--%>
                <%--<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu1"--%>
                        <%--data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--Services--%>
                <%--</button>--%>
                <%--<div class="dropdown-menu" aria-labelledby="dropdownMenu2">--%>
                    <%--<c:forEach var="task" items="${tasks}">--%>
                        <%--<button class="dropdown-item" type="button" value="${task.taskId}">${task.title} ${task.price} &euro;</button>--%>
                    <%--</c:forEach>--%>
                <%--</div>--%>
            <%--</div>--%>

            <input id="datepicker" name="datepicker" type="date" placeholder="Date" class="form-control input-sm">

            <input id="barbers" name="barbers" type="text" placeholder="BarberId"  class="form-control input-sm">

            <input id="timepicker" name="timepicker" placeholder="Time" type="time" class="form-control input-sm">

            <div class="form-group">
                <div class="col-md-12 text-center">
                    <input type="submit" class="btn btn-primary btn-xl page-scroll" value="Book">
                </div>
            </div>

            <div style="color: white;">
            <c:forEach var="task" items="${tasks}">
                ${task.taskId} ${task.title} ${task.price} &euro
            </c:forEach>
            <br>
            <c:forEach var="barber" items="${barbers}">
                ${barber.barberId} ${barber.firstName} ${barber.lastName}
            </c:forEach>
            </div>

        </div>
    </form>

    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/creative.min.js"></script>
</body>
</html>

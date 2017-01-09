<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Booking</title>

    <link href="resources/css/background.css" rel="stylesheet">

    <link href="resources/css/booking/booking.css" rel="stylesheet">

    <script src="resources/js/booking/modernizr.custom.63321.js"></script>
    <script src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/booking/jquery.dropdown.js"></script>
    <script type="text/javascript">

        $( function() {

            $( '#cd-dropdown' ).dropdown( {
                gutter : 5,
                stack : false,
                delay : 100,
                slidingIn : 100
            } );

        });

    </script>

</head>
<body>

<%@include file="header.jsp" %>

<div class="intro-header ">
    <section class="main">
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >First Name:</label>
                <div class="col-sm-3">
                    <input id="firstname" class="booking-input">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Last Name:</label>
                <div class="col-sm-3">
                    <input id="lastname" class="booking-input">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Phone:</label>
                <div class="col-sm-3">
                    <input id="phone" class="booking-input">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Email:</label>
                <div class="col-sm-3">
                    <input id="email" class="booking-input">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Services:</label>
                <div class="col-sm-3">
                    <select id="cd-dropdown" class="cd-select  col-sm-10">
                        <option value="-1" selected>Choose your service</option>
                        <c:forEach var="task" items="${tasks}">
                            <option value="${task.taskId}" class="icon-camera">
                                    ${task.title} (${task.duration}min), ${task.price} &euro;</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <a href="bookingNext" class="btn btn-primary btn-xl page-scroll">Continue</a>
        </form>
    </section>
</div>

    <script src="resources/js/creative.min.js"></script>
</body>
</html>

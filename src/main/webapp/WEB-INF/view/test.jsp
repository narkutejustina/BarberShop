<!DOCTYPE HTML>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Booking</title>

    <link href="resources/css/background.css" rel="stylesheet">
    <%--<link href="resources/css/booking/booking.css" rel="stylesheet">--%>

</head>
<body>
<%@include file="header.jsp" %>

<div class="intro-header ">
    <section class="main">
        <%--<div class="row date-pick">--%>
        <%--<div class="form-group">--%>
        <%--<label class="col-sm-offset-3 col-sm-2" >Date:</label>--%>
        <%--<div class="col-sm-3">--%>
        <input id="datetimepicker">
        <%--</div>--%>
        <%--</div>--%>

        <%--</div>--%>

        <div class="row barber-pick">
            <label class="col-sm-offset-3 col-sm-2" >Barber:</label>
            <div class="col-sm-3">
                <select id="cd-dropdown" name="barbers" class="cd-select  col-sm-10">
                    <option value="-1" selected>Choose your service</option>
                    <c:forEach var="barber" items="${barbers}">
                        <option value="${barber.barberId}" class="icon-camera">
                                ${barber.firstName} ${barber.lastName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="row time-pick">
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Date:</label>
                <div class="col-sm-3">
                    <input id="timepicker">
                </div>
            </div>

        </div>

        <%--<h1> ${name}</h1>--%>
        <%--<h1> ${lastname}</h1>--%>
        <%--<h1> ${phone}</h1>--%>
        <%--<h1> ${taskid}</h1>--%>

    </section>
</div>
</body>
<link rel="stylesheet" type="text/css" href="resources/datetimepicker/jquery.datetimepicker.css" />
<script src="resources/js/jquery.js"></script>
<script src="resources/datetimepicker//build/jquery.datetimepicker.full.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#timetpicker').datetimepicker({
            format: 'LT'
        });
        jQuery('#datetimepicker').datetimepicker();

    });
</script>
</html>

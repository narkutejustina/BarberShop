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
    <form class="main" method="post" action="bookingInformation">

        <div class="row date-pick">
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Date:</label>
                <div class="col-sm-3">
                    <input id="datepicker" name="datepicker" onchange="selected()">
                </div>
            </div>
        </div>

        <div class="row barber-pick">
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Barber:</label>
                <div class="col-sm-3">
                    <select id="barbersDropDown" name="barbers" class="cd-select col-sm-10" onchange="selected()">
                        <option value="-1" selected>Choose barber</option>
                        <c:forEach var="barber" items="${barbers}">
                            <option value="${barber.barberId}" class="icon-camera">
                                    ${barber.firstName} ${barber.lastName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="row time-pick">
            <div class="form-group">
                <label class="col-sm-offset-3 col-sm-2" >Time:</label>
                <div class="col-sm-3 ">
                    <input id="timepicker" name="timepicker">
                </div>
            </div>

        </div>
        <input type="submit" class="btn btn-primary btn-xl page-scroll" value="Book">
        <%--<h1> ${name}</h1>--%>
        <%--<h1> ${lastname}</h1>--%>
        <%--<h1> ${phone}</h1>--%>
        <%--<h1> ${taskid}</h1>--%>
    </form>
</div>
</body>
<link rel="stylesheet" type="text/css" href="resources/datetimepicker/jquery.datetimepicker.css" />
<script src="resources/js/jquery.js"></script>
<script src="resources/datetimepicker//build/jquery.datetimepicker.full.min.js"></script>
<script type="text/javascript">

    var times=['8:00','8:30','9:00','9:30','10:00','10:30','11:00','11:30','12:00','12:30','13:00','13:30',
        '14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30'];

    var timePicker = $('#timepicker').datetimepicker();
    $(function () {
        timePicker.prop('disabled', true);

        $('#timepicker').datetimepicker({
            datepicker: false,
            format:'H:i'
        });
        $('#datepicker').datetimepicker({
            timepicker: false,
            format: 'Y/m/d',
            minDate: 0,//today
            dayWeekStart: 1,
            disabledWeekDays: [0,6]
        });
    });

    function selected(){
        var date = $('#datepicker').datetimepicker('getValue');
        var barberId = $('#barbersDropDown').val();

        var isFilled =  (date != null)&&(barberId>0);

        if(isFilled && timePicker.prop('disabled')){
            setTimes(date, barberId);
            timePicker.prop('disabled', false);
        }

        if( !isFilled && !timePicker.prop('disabled'))
            timePicker.prop('disabled', true);
    }

    function setTimes(chosenDate, barberId){

        var availableTimes=times;
        for(var booking in ${bookings}){
            if((booking.date==chosenDate)&&(booking.barberId==barberId)){
                availableTimes = _.without(availableTimes, booking.time)
            }
         }

        $('#timepicker').datetimepicker({
            allowTimes: availableTimes
        });
    }
</script>
</html>

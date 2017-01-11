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
            <form class="form-horizontal" method="post" action="/bookingInformation">
                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >First Name:</label>
                    <div class="col-sm-3">
                        <input id="firstname" name="firstname" class="booking-input">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Last Name:</label>
                    <div class="col-sm-3">
                        <input id="lastname" name="lastname" class="booking-input">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Phone:</label>
                    <div class="col-sm-3">
                        <input id="phone" name="phone" class="booking-input">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Email:</label>
                    <div class="col-sm-3">
                        <input id="email" name="email"  class="booking-input">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Services:</label>
                    <div class="col-sm-3">
                        <select id="cd-dropdown" name="tasks" class="cd-select cd-dropdown col-sm-10">
                            <option value="-1" selected>Choose your service</option>
                            <c:forEach var="task" items="${tasks}">
                                <option value="${task.taskId}" class="icon-camera">
                                        ${task.title} (${task.duration}min), ${task.price} &euro;</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Date:</label>
                    <div class="col-sm-3">
                        <input id="datepicker" name="datepicker"  class="booking-input" onchange="selected()">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Barber:</label>
                    <div class="col-sm-3">
                        <select id="barbersDropDown" name="barbers" class="cd-select booking-input col-sm-10" onchange="selected()">
                            <option value="-1" selected>Choose barber</option>
                            <c:forEach var="barber" items="${barbers}">
                                <option value="${barber.barberId}" class="icon-camera">
                                        ${barber.firstName} ${barber.lastName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-offset-3 col-sm-2" >Time:</label>
                    <div class="col-sm-3 ">
                        <input id="timepicker" name="timepicker"  class="booking-input">
                    </div>
                </div>


                <input type="submit" class="btn btn-primary btn-xl page-scroll" value="Book">
            </form>
        </section>

        <div id="hidden" style="display:none">
            <select id="bookingsList">
                <c:forEach var="booking" items="${bookings}">
                    <option value="${booking.getKey()}">${booking.getValue()}</option>
                </c:forEach>
            </select>
        </div>
    </div>

</body>

<link rel="stylesheet" type="text/css" href="resources/datetimepicker/jquery.datetimepicker.css" />

<script src="resources/js/jquery.js"></script>
<script src="resources/datetimepicker//build/jquery.datetimepicker.full.min.js"></script>
<script src="resources/js/booking/modernizr.custom.63321.js"></script>
<script type="text/javascript" src="resources/js/booking/jquery.dropdown.js"></script>
<script src="resources/js/creative.min.js"></script>

<script type="text/javascript">

    var times=['08:00','08:30','09:00','09:30','10:00','10:30','11:00','11:30','12:00','12:30','13:00','13:30',
        '14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30'];
    var selectedDate;

    var timePicker = $('#timepicker').datetimepicker();
    $(function () {
        timePicker.prop('disabled', true);
        $('#timepicker').keydown(function() {
            return false;
        });

        $('#datepicker').keydown(function() {
            return false;
        });

        $('#timepicker').datetimepicker({
            datepicker: false,
            format:'H:i'
        });
        $('#datepicker').datetimepicker({
            timepicker: false,
            format: 'Y-m-d',
//            mask: 'Y-m-d'
            minDate: Date.now() + 1,
            value: Date.now(),
            dayWeekStart: 1,
            disabledWeekDays: [0,6],
            onChangeDateTime:function(dp,$input){
                selectedDate = $input.val();
            }
        });
        $( '#cd-dropdown' ).dropdown( {
            gutter : 5,
            stack : false,
            delay : 100,
            slidingIn : 100
        } );
    });

    function selected(){
        var date = selectedDate;
        var barberId = $('#barbersDropDown').val();

        var isFilled =  (date != null)&&(barberId>0);

        if(isFilled && timePicker.prop('disabled')){
            setTimes(date, barberId);
            timePicker.prop('disabled', false);
        }

        if( !isFilled && !timePicker.prop('disabled')){
            timePicker.prop('disabled', true);
            timePicker.text("");
        }
    }

    function remove(arr, value) {
        var newArr = [];
        var index=0;
        for(var i = 0; i<arr.length; i++){
            var val = arr[i];
            if(val != value){
                newArr[index++] = val;
            }
        }
        return newArr;
    }

    function setTimes(chosenDate, barberId){
        var availableTimes=times;
        var options = $('#bookingsList option');

       $.map(options ,function(option) {
           var bookingTime = option.text;
           if(option.value == (chosenDate + " " + barberId)){
               availableTimes = remove(times, bookingTime);
           }
        });

        $('#timepicker').datetimepicker({
            allowTimes: availableTimes
        });
    }
</script>
</html>

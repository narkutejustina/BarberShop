<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Booking</title>

        <link href="resources/css/booking/onlineBooking.css" rel="stylesheet">
        <link href="resources/css/bootstrap.css" rel="stylesheet">

        <link href="resources/css/font-awesome.css" rel="stylesheet">
        
        <!--Angular-->
        <script src="https://code.angularjs.org/1.4.0-rc.1/angular.js"></script>
        <script src="resources/js/app.js"></script>

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

 <link href="resources/css/creative.css" rel="stylesheet">
    </head>
    <body ng-app="validationApp" ng-controller="mainController">
    <%@include file="header.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="well well-sm">
                    <section class="main">
                        <!--<form class="form-horizontal" method="post" action="/bookingInformation" >-->
                        <form name="userForm" class="form-horizontal"
                              method="post" ng-submit="submitForm(userForm.$valid)"
                              novalidate action="/bookingInformation" >
                            <fieldset>
                                <legend class="text-center contactHeader">BOOKING</legend>
                                <div class="form-group" ng-class="{ 'has-error' : userForm.firstname.$invalid && !userForm.firstname.$pristine }">
                                    <div class="col-md-10 col-md-offset-1">
                                        <!--<input id="firstname" name="firstname"  type="text" placeholder="First name" required pattern="[a-zA-Z]+" class="booking-input form-control input-sm">                            -->
                                        <input id="firstname" name="firstname" ng-model="firstname" ng-pattern="/^[a-zA-Z ]{2,30}$/" type="text" placeholder="First name" required class="booking-input form-control input-sm">                           
                                        <div class="custom-error" ng-show="userForm.firstname.$dirty && userForm.firstname.$invalid">Invalid: 
                                            <span ng-show="userForm.firstname.$error.required">First name is required.</span>
                                            <span  ng-show="userForm.firstname.$error.pattern"> First name should contains only letters.</span>
                                        </div>                                    
                                    </div>
                                </div>
                                <div class="form-group" ng-class="{ 'has-error' : userForm.lastname.$invalid && !userForm.lastname.$pristine }">
                                    <div class="col-md-10 col-md-offset-1">
                                        <!--<input id="lastname" name="lastname" type="text" placeholder="Last name" required pattern="[a-zA-Z]+" class="booking-input form-control input-sm">-->
                                        <input id="lastname" name="lastname" ng-model="lastname" type="text" ng-pattern="/^[a-zA-Z ]{2,30}$/" placeholder="Last name" required class="booking-input form-control input-sm">
                                        <div class="custom-error" ng-show="userForm.lastname.$dirty && userForm.lastname.$invalid">Invalid: 
                                        <span ng-show="userForm.lastname.$error.required">Last name is required.</span>
                                        <span ng-show="userForm.lastname.$error.pattern"> Last name should contains only letters and be longer than 1 symbol.</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group" ng-class="{ 'has-error' : userForm.emaill.$invalid && !userForm.email.$pristine }">
                                    <div class="col-md-10 col-md-offset-1">
                                        <!--<input id="email" name="email" type="email" placeholder="Email" required class="booking-input  input-sm form-control">-->
                                        <input id="email" name="email" ng-model="email" type="email" placeholder="Email" required class="booking-input  input-sm form-control">
                                        <div class="custom-error" ng-show="userForm.email.$dirty && userForm.email.$invalid">Invalid:
                                            <span ng-show="userForm.email.$error.required">Email is required.</span>
                                            <span ng-show="userForm.email.$error.email">Please, write a valid email address.</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group" ng-class="{ 'has-error' : userForm.phone.$invalid && !userForm.phone.$pristine }">
                                    <div class="col-md-10 col-md-offset-1">
                                        <!--<input id="phone" name="phone" placeholder="Phone" pattern="[0-9]{8}$" required class="booking-input form-control input-sm">-->
                                        <input id="phone" name="phone" ng-model="phone" placeholder="Phone" type="text" ng-pattern="/\+3706([0-9]{7})$/" required class="booking-input form-control input-sm">
                                        <div class="custom-error" ng-show="userForm.phone.$dirty && userForm.phone.$invalid">Invalid: 
                                            <span ng-show="userForm.phone.$error.required">Phone number is required.</span>
                                            <span ng-show="userForm.phone.$error.pattern"> Phone number format doesn`t match the format. It should be +3706xxxxxxx.</span>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <select id="tasksDropdown" name="tasks"
                                                class="dropdown cd-select booking-input form-control col-sm-10 input-sm">
                                            <option value="-1" selected>Choose your service</option>
                                            <c:forEach var="task" items="${tasks}">
                                                <option value="${task.taskId}" class="icon-camera">
                                                    ${task.title} ${task.price} &euro;</option>
                                                </c:forEach>
                                        </select>                            
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <!--<input placeholder="Date" class="textbox-n" type="text" onfocus="(this.type='datepicker')" class="booking-input form-control input-sm" id="datepicker" onchange="selected()">-->
                                        <input id="datepicker" name="datepicker"  class="booking-input form-control input-sm" onchange="selected()">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <select id="barbersDropDown" name="barbers" class="dropdown cd-select booking-input col-sm-10 form-control input-sm"
                                                onchange="selected()">
                                            <option value="-1" selected>Choose barber</option>
                                            <c:forEach var="barber" items="${barbers}">
                                                <option value="${barber.barberId}" class="icon-camera">
                                                    ${barber.firstName} ${barber.lastName}</option>
                                                </c:forEach>
                                                
                                        </select>                            
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <input id="timepicker" name="timepicker" placeholder="Time" required  class="booking-input form-control input-sm">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12 text-center ">
                                        <input type="submit" class="btn btn-primary btn-xl page-scroll" value="Book" ng-disabled="userForm.$invalid">
<!--                                        <button type="submit" class="btn btn-primary btn-xl">Submit</button>-->
                                    </div>
                                </div>
                            </fieldset>
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
            </div>

            <div class="col-md-6"> </div>
        </div>
    </div>

</body>

<link rel="stylesheet" type="text/css" href="resources/datetimepicker/jquery.datetimepicker.css" />

<script src="resources/js/jquery.js"></script>
<script src="resources/datetimepicker/js/jquery.datetimepicker.full.min.js"></script>
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

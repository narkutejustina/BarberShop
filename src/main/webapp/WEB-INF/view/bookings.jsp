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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css">

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-select.js"></script>

<script>
    $(document).on("click", ".open-edit", function () {
        var date = $(this).data('date');
        $(".modal-body #booking-date").val(date);

        var time = $(this).data('time');
        $(".modal-body #booking-time").val(time);

        var firstname = $(this).data('firstname');
        $(".modal-body #booking-firstname").val(firstname);

        var lastname = $(this).data('lastname');
        $(".modal-body #booking-lastname").val(lastname);

        var barberid = $(this).data('barberid');
        $('#booking-barberid').selectpicker('val', barberid);

        var taskid = $(this).data('taskid');
        $('#booking-taskid').selectpicker('val', taskid);

        var price = $(this).data('price');
        $(".modal-body #booking-price").val(price);

        var clientId = $(this).data('clientid');
        $(".modal-body #booking-clientid").val(clientId);

        var bookingId = $(this).data('id');
        $(".modal-footer #bookingId1").val(bookingId);
    });


    $(document).on("click", ".open-delete", function () {
        var bookingId = $(this).data('id');
        $(".modal-footer #bookingId2").val(bookingId);
    });
</script>
</head>
<body>

<%@include file="header.jsp" %>

    <div class="container">
        <div class="well well-sm">
        <table id="mytable" class="table table-sm table-hover table-responsive bookingsTable" >
            <thead>
            <tr>
                <th>#</th>
                <th>Date</th>
                <th>Time</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Barber</th>
                <th>Service</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <tbody>

            <c:forEach var="booking" items="${bookings}" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index+1}</th>
                    <td>${booking.getKey().date}</td>
                    <td>${booking.getKey().time}</td>
                    <td>${booking.getValue().firstName}</td>
                    <td>${booking.getValue().lastName}</td>

                    <td>
                    <c:forEach var="barber" items="${barbers}">
                        <c:if test="${booking.getKey().barberId == barber.barberId}">
                         ${barber.firstName}
                         </c:if>
                    </c:forEach>
                    </td>

                    <c:forEach var="task" items="${tasks}">
                    <c:if test="${booking.getKey().taskId == task.taskId}">
                        <td>${task.title}</td>
                        <td>${task.price}</td>
                        </c:if>
                    </c:forEach>

                    <td><button class="open-edit btn btn-primary btn-xs"
                                data-id="${booking.getKey().bookingId}"
                                data-date="${booking.getKey().date}"
                                data-time="${booking.getKey().time}"
                                data-firstname="${booking.getValue().firstName}"
                                data-lastname="${booking.getValue().lastName}"
                                data-clientid="${booking.getValue().clientId}"
                                data-barberid="${booking.getKey().barberId}"
                                data-taskid="${booking.getKey().taskId}"
                                <c:forEach var="task" items="${tasks}">
                                    <c:if test="${booking.getKey().taskId == task.taskId}">
                                        data-price="${task.price}"
                                    </c:if>
                                </c:forEach>
                                data-title="Edit" data-toggle="modal"
                                data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></td>

                    <td><button class="open-delete btn btn-danger btn-xs"
                                data-id="${booking.getKey().bookingId}"
                                data-title="Delete" data-toggle="modal"
                                data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></td>
            </c:forEach>
            </tbody>
        </table>
        </div>
    </div>

<form method="post">
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading">Edit this booking</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="booking-date" class="control-label">Date:</label>
                        <input type="text" class="form-control" id="booking-date" name="booking-date">
                    </div>
                    <div class="form-group">
                        <label for="booking-time" class="control-label">Time:</label>
                        <input type="text" class="form-control" id="booking-time" name="booking-time">
                    </div>
                    <div class="form-group">
                        <label for="booking-firstname" class="control-label">First name:</label>
                        <input type="text" class="form-control" id="booking-firstname" name="booking-firstname">
                    </div>
                    <div class="form-group">
                        <label for="booking-lastname" class="control-label">Last name:</label>
                        <input type="text" class="form-control" id="booking-lastname" name="booking-lastname">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Barber:</label>
                        <select class="selectpicker show-tick" id="booking-barberid" name="booking-barberid">
                            <c:forEach var="barber" items="${barbers}">
                                <option value="${barber.barberId}">${barber.firstName}</option>
                            </c:forEach>
                        </select>
                        <label class="control-label">Service:</label>
                        <select class="selectpicker show-tick" id="booking-taskid" name="booking-taskid">
                            <c:forEach var="task" items="${tasks}">
                                    <option value="${task.taskId}">${task.title}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="booking-price" class="control-label">Price:</label>
                        <input type="text" class="form-control" id="booking-price" name="booking-price">
                    </div>

                    <input type="hidden" id="booking-clientid" name="booking-clientid">
                </div>
                <div class="modal-footer">
                    <button type="submit" name="bookingId" id="bookingId1" formaction="updatebooking"
                            class="btn btn-warning btn-lg" style="width: 100%;"><span
                            class="glyphicon glyphicon-ok-sign"></span> Update</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                            class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="">Delete this booking</h4>
                </div>
                <div class="modal-body">

                    <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you
                        sure you want to delete this Booking?</div>

                </div>
                <div class="modal-footer">
                    <button type="submit" name="bookingId" id="bookingId2" formaction="deletebooking"
                            class="btn btn-success" ><span
                            class="glyphicon glyphicon-ok"></span> Yes
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span
                            class="glyphicon glyphicon-remove"></span> No</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</form>
</body>
</html>
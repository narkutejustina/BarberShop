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

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>--%>
    <%--<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>--%>
<script>
    $(document).on("click", ".open-delete", function () {
        var bookingId = $(this).data('id');
        $(".modal-footer #bookingId").val(bookingId);
        $('#delete').modal('show');
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
                <th>Edit</th>
                <th>Delete</th>
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



                    <td><button  class="btn btn-primary btn-xs" data-id="${booking.getKey().bookingId}"
                                data-title="Edit" data-toggle="modal"
                                data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></td>


                    <td><button class="open-delete btn btn-danger btn-xs"
                                data-id="${booking.getKey().bookingId}"
                                data-title="Delete" data-toggle="modal"
                                data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></td>

                    <%--<td>--%>
                        <%--<a href="#"><span class="glyphicon glyphicon-pencil" style="color: navajowhite"></span></a>--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--<button type="submit" formaction="deletebooking" name="id"--%>
                                <%--value="${booking.getKey().bookingId}">--%>
                            <%--<span class="glyphicon glyphicon-trash" style="color: darkred"></span>--%>
                        <%--</button>--%>
                        <%--<a href="#"><span class="glyphicon glyphicon-trash" style="color: darkred"></span></a>--%>
                    <%--</td>--%>
                <%--</tr>--%>
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
                        <input class="form-control " type="text" value="">
                    </div>
                    <div class="form-group">

                        <input class="form-control " type="text" placeholder="Irshad">
                    </div>
                    <div class="form-group">
                        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


                    </div>
                </div>
                <div class="modal-footer ">
                    <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span
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
                    <button type="submit" name="bookingId" id="bookingId" formaction="deletebooking"
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
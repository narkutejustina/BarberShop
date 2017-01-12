<%-- 
    Document   : contacts
    Created on : Jan 9, 2017, 12:21:51 PM
    Author     : Urte
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacts</title>
        <link href="resources/css/bootstrap.css" rel="stylesheet">
        <link href="resources/css/creative.css" rel="stylesheet">
        
        <link href="resources/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/css/background.css" rel="stylesheet">
        
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <%@include file="header.jsp" %>

        <!-- Contact with Map - START -->
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center contactHeader">CONTACT US</legend>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="fname" name="name" type="text" placeholder="First Name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="lname" name="name" type="text" placeholder="Last Name" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="email" name="email" type="text" placeholder="Email Address" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <textarea class="form-control" id="message" name="message" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center ">
                                <button type="submit" class="btn btn-primary btn-xl">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        
        <div class="col-md-6">
            <div>
                <div class="panel panel-default well well-sm">
                    <div class="text-center contactHeader">OUR OFFICE</div>
                    <div class="panel-body text-center">
                        <h4>Address</h4>
                        <div>
                        Gedimino pr.54, Vilnius<br />
                        370 5 707 0707<br />
                        barbershop@unibz.it<br />
                        </div>
                        <hr />
                        <div id="map1" class="map">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="resources/js/jquery.js"></script>

<script src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyD_-3t2Bfyk-i-DRHy-83zSDnzThJQoWMg"></script>

<script type="text/javascript">
    jQuery(function ($) {
        function init_map1() {
            var myLocation = new google.maps.LatLng(54.6893146, 25.265283299999965);
            var mapOptions = {
                center: myLocation,
                zoom: 16
            };
            var marker = new google.maps.Marker({
                position: myLocation,
                title: "Property Location"
            });
            var map = new google.maps.Map(document.getElementById("map1"),
                mapOptions);
            marker.setMap(map);
        }
        init_map1();
    });
    
</script>
<style>
    .map {
        min-width: 300px;
        min-height: 300px;
        width: 100%;
        height: 100%;
    }

    .header {
        background-color: #F5F5F5;
        color: #36A0FF;
        height: 70px;
        font-size: 27px;
        padding: 10px;
    }
</style>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/creative.min.js"></script>
    </body>
</html>

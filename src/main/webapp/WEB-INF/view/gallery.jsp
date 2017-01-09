<%-- 
    Document   : gallery
    Created on : Jan 8, 2017, 3:46:32 PM
    Author     : Urte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Barbershop Gallery</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/creative.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- Custom CSS -->
    <link href="resources/css/thumbnail-gallery.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<%@include file="header.jsp" %>

<div class="container">
    <h1 class="page-header galleryHeader" >Gallery</h1>
</div>

<!-- content -->
<div class="container">
    <div class="grid">
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard1.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard2.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard3.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard4.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard5.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard6.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard7.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard8.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard9.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard10.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard11.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard12.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard13.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard14.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard15.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard16.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard17.jpg" />
        <img class="thumbnail img-responsive grid-item" src="resources/images/gallery/beard18.jpg" />
    </div>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Barbershop 2016</p>
            </div>
        </div>
        <!-- /.row -->
    </footer>
</div>

<!-- jQuery -->
<script src="resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/creative.min.js"></script>
<script src="resources/js/masonry.min.js"></script>
<script src="resources/js/imagesloaded.min.js"></script>

<script>
    // init Masonry
    var $grid = $('.grid').masonry({
        // options...
        itemSelector: '.grid-item',
        columnWidth: 285
    });
    // layout Masonry after each image loads
    $grid.imagesLoaded().progress( function() {
        $grid.masonry('layout');
    });
</script>
</body>
</html>

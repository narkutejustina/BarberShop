<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Barbershop</title>

    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/creative.css" rel="stylesheet">
    <link href="resources/css/full-slider.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="home">Barbershop</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="gallery">Gallery</a></li>
                <li><a href="prices">Prices</a></li>
                <li><a href="staff">Staff</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="booking">Online Booking</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide">

    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('resources/images/background3.jpg');"></div>
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('resources/images/background2.jpg');"></div>
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('resources/images/background1.jpg');"></div>
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('resources/images/background4.jpg');"></div>
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('resources/images/background5.jpeg');"></div>
            <div class="carousel-caption">
            </div>
        </div>
    </div>

    <div class="header-content">
        <div class="header-content-inner">
            <h1 id="homeHeading">Welcome to Barbershop</h1>
            <hr>
            <p>
                The Barbershop offers an experience to remember for those seeking a unique and sophisticated outing
                in a relaxed atmosphere.</br>
                You can always be sure our barbers have got you covered for all the classics and latest hairstyles!
            </p>
            <a href="booking" class="btn btn-primary btn-xl page-scroll">Make a booking</a>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>

</header>

<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <h1>Barbershop project for Unibz</h1>
            <p></p>
        </div>
    </div>

    <hr>

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
<!-- /.container -->

<script src="resources/js/jquery.js"></script>

<script src="resources/js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 4000 //changes the speed
    })
</script>

</body>

</html>

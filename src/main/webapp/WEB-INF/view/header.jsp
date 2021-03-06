<div id = "wrapper">
    <div role="navigation">
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
                        <li><a href="contacts">Contacts</a></li>
                        <li><a href="booking">Online Booking</a></li>
                        <c:if test="${!empty sessionScope.logged_user}">
                            <li><a href="bookings">Bookings</a></li>
                        </c:if>
                        <c:if test="${!empty sessionScope.logged_user}">
                            <li><a href="messages">Messages</a></li>
                        </c:if>
                        <c:if test="${!empty sessionScope.logged_user}">
                            <li><a href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${empty sessionScope.logged_user}">
                            <li><a href="login">Login</a></li>
                        </c:if>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
</div>
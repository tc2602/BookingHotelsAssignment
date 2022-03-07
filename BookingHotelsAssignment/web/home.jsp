<%-- 
    Document   : home
    Created on : Feb 23, 2022, 12:09:56 PM
    Author     : Tai Cao 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Homestay Booking</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Resort Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- pop-up -->
        <link rel="stylesheet" href="css/lightbox.css">
        <!-- //pop-up -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />

        <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
        <!--/web-fonts-->
        <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
        <!--//web-fonts-->
        <style>
            figcaption p span{
                font-size: 20px;
            }

            .effect-apollo img{
                width: 350px;
                height: 388px;
            }
        </style>
    </head>

    <body>
        <!--/main-header-->
        <!--/banner-section-->        
        <div id="demo-1">
            <div class="demo-inner-content">
                <!--/header-w3l-->
                <div class="header-w3-agileits" id="home">
                    <div class="inner-header-agile">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header">
                                <h1><a href="home.jsp"><span>H</span>omestay <p class="s-log">Booking</p></a></h1>
                            </div>
                            <!-- navbar-header -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="home.jsp">Home</a></li>
                                    <li><a href="discovery">Discovery</a></li>
                                        <c:choose>
                                            <c:when test="${account == null}">
                                            <li><a href="login">Sign in</a></li>
                                            <li><a href="register">Sign up</a></li>
                                            </c:when>

                                        <c:otherwise>
                                            <li class="dropdown-toggle">
                                                <a class="dropdown-toggle" data-toggle="dropdown">Welcome ${account.username} <b class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <c:if test="${account.type == true}">
                                                        <li><a href="management">My Management</a></li>
                                                        <li><a href="history">My Booking</a></li>
                                                        <li><a href="income">My Income</a></li>
                                                        </c:if>
                                                        <c:if test="${account.type == false}">   
                                                        <li><a href="history">My Booking</a></li>
                                                        </c:if>
                                                    <li><a href="profile.jsp">My Profile</a></li>
                                                    <li><a href="logout">Log out</a></li>
                                                </ul>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>
                        </nav>

                        <div class="w3ls_search">
                            <div class="cd-main-header">
                                <ul class="cd-header-buttons">
                                    <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
                                </ul> <!-- cd-header-buttons -->
                            </div>
                            <div id="cd-search" class="cd-search">
                                <form action="discovery" method="get">
                                    <input name="address" type="search" placeholder="Search...">
                                </form>
                            </div>
                        </div>
                    </div>

                    <!--//header-w3l-->
                    <!--/banner-info-->
                    <div class="baner-info">
                        <h3><span>Welcome </span>To <span>Homestay </span> Booking<c:if test="${account != null}">,<span> ${account.username}!</span></c:if></h3>
                            <h4>Book Your Dream Homestay Destinations</h4>
                            <p>Enjoy Your Stay In</p>
                        </div>
                        <!--/banner-ingo-->

                    </div>
                </div>
            </div>
            <!--/banner-section-->

            <!--//introduction-->
            <div class="special featured">
                <div class="container">
                    <div class="ab-w3l-spa">
                        <p>Book homes, homestay, car rental, experience and more on Homestay Booking. Meaningful travel experiences begin with us. Browse destination reviews and upgrade your trips by booking homes, apartments & rooms for rent on our great online platform.</p>
                    </div>
                </div>
            </div>
            <!--//introduction-->

            <!--/content-inner-section-->
            <div class="w3_content_agilleinfo_inner">
                <div class="container">
                    <div class="inner-agile-w3l-part-head">
                        <h2 class="w3l-inner-h-title">Recommended Destination</h2>
                    </div>
                    <div class="gallery-grids">
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="discovery">
                                        <img src="images/city/hanoi.png" alt="Địa điểm"/>
                                    </a>
                                    <figcaption>
                                        <p><span>Ha Noi</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="">
                                        <img src="images/city/hochiminh.png" alt="Địa điểm" />
                                    </a>
                                    <figcaption>
                                        <p><span>Ho Chi Minh</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="">
                                        <img src="images/city/danang.png" alt="Địa điểm" />
                                    </a>
                                    <figcaption>
                                        <p><span>Da Nang</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="">
                                        <img src="images/city/vungtau.png" alt="Địa điểm" />
                                    </a>
                                    <figcaption>
                                        <p><span>Vung Tau</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="">
                                        <img src="images/city/dalat.png" alt="Địa điểm" />
                                    </a>
                                    <figcaption>
                                        <p><span>Da Lat</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-4 gallery-grid">
                            <div class="grid">
                                <figure class="effect-apollo">
                                    <a class="example-image-link" href="">
                                        <img src="images/city/nhatrang.png" alt="Địa điểm" />
                                    </a>
                                    <figcaption>
                                        <p><span>Nha Trang</span></p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>
            <!--//content-inner-section-->

            <!--services-->
            <div class="special featured">
                <div class="inner-agile-w3l-part-head">
                    <h2 class="w3l-inner-h-title">Homestay Services</h2>
                </div>
                <div class="container">
                    <div class="w3_agileits_services_grids">
                        <div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
                            <div class="w3_agileits_services_grid_agile">
                                <div class="w3_agileits_services_grid_1">
                                    <img src="images/service/restaurant.jpg" alt="service-img">
                                </div>
                                <h3>Restaurant</h3>
                                <p>Providing food and drink services to guests in homestays and restaurants, showing attentiveness, and understanding of their needs and expectations.</p>
                            </div>
                        </div>
                        <div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
                            <div class="w3_agileits_services_grid_agile">
                                <div class="w3_agileits_services_grid_1">
                                    <img src="images/service/bar.jpg" alt="service-img">
                                </div>
                                <h3>Lounge Bar</h3>
                                <p>Bar is an important part of the food and beverage department. It includes professional bartenders providing alcoholic and non-alcoholic beverage to the customers.</p>
                            </div>
                        </div>
                        <div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
                            <div class="w3_agileits_services_grid_agile">
                                <div class="w3_agileits_services_grid_1">
                                    <img src="images/service/pool.jpg" alt="service-img">
                                </div>
                                <h3>Swimming Pool</h3>
                                <p>The outdoor swimming pool is exclusively for guests. It has a perfect ventilation system, strict water quality control, and natural lighting that ensures a relaxing atmosphere.</p>
                            </div>
                        </div>
                        <div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
                            <div class="w3_agileits_services_grid_agile">
                                <div class="w3_agileits_services_grid_1">
                                    <img src="images/service/spa.jpg" alt="service-img">
                                </div>
                                <h3>Spa Care</h3>
                                <p>Spa services including massage, beauty and nails one or all come to you. Escape completely to relax, re-balance and restore a sense of wellbeing with one of our indulgent spa rituals.</p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //services -->

            <!--footer-->
        <jsp:include page="footer.jsp" flush="true"/>
        <!--//footer-->

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- Dropdown-Menu-JavaScript -->
        <script>
            $(document).ready(function () {
                $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                            $(this).toggleClass('open');
                        },
                        function () {
                            $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                            $(this).toggleClass('open');
                        }
                );
            });
        </script>
        <!-- //Dropdown-Menu-JavaScript -->


        <script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
        <!-- search-jQuery -->
        <script src="js/main.js"></script>

        <!--/script-->
        <script src="js/lightbox-plus-jquery.min.js"></script>
        <!--/script-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>

        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!--end-smooth-scrolling-->
        <!--js for bootstrap working-->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
    </body>
</html>

<%-- 
    Document   : menu
    Created on : Feb 06, 2022, 07:44:58 AM
    Author     : Tai Cao 
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            #demo-1{
                min-height: 84px;
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
                            <c:set value="${account}" var="a"></c:set>
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li><a href="home.jsp">Home</a></li>
                                        <li class="active"><a href="discovery">Discovery</a></li>
                                        <c:choose>
                                            <c:when test="${a == null}">
                                            <li><a href="login">Sign in</a></li>
                                            <li><a href="register">Sign up</a></li>
                                            </c:when>

                                        <c:otherwise>
                                            <li class="dropdown-toggle" class="${url != "/discovery" ? "active" : ""}">
                                                <a class="dropdown-toggle" data-toggle="dropdown">Welcome ${a.username}<b class="caret"></b></a>
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
                                    <li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
                                </ul> <!-- cd-header-buttons -->
                            </div>
                            <div id="cd-search" class="cd-search">
                                <form action="discovery" method="get">
                                    <input name="address" type="search" placeholder="Search...">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/banner-section-->


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
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };
                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!--end-smooth-scrolling-->
        <!--js for bootstrap working-->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
    </body>
</html>

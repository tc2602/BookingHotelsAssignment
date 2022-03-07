<%-- 
    Document   : profile
    Created on : Feb 27, 2022, 5:23:37 PM
    Author     : Tai Cao 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Resort Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--//for-mobile-apps--> 
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--pop-up--> 
        <link rel="stylesheet" href="css/lightbox.css">
        <!--//pop-up--> 
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
            html{
                background-color: #f5f5f5;    
            }

            body{
                margin-top:20px;
                color: #1a202c;
                text-align: left;
                background-color: #f5f5f5;    
            }
            .main-body {
                padding: 15px;
            }
            .card {
                box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
            }

            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid rgba(0,0,0,.125);
                border-radius: .25rem;
            }

            .card-body {
                flex: 1 1 auto;
                min-height: 1px;
                padding: 1rem;
            }

            .gutters-sm {
                margin-right: -8px;
                margin-left: -8px;
            }

            .gutters-sm>.col, .gutters-sm>[class*=col-] {
                padding-right: 8px;
                padding-left: 8px;
            }
            .mb-3, .my-3 {
                margin-bottom: 1rem!important;
            }

            .bg-gray-300 {
                background-color: #e2e8f0;
            }
            .h-100 {
                height: 100%!important;
            }
            .shadow-none {
                box-shadow: none!important;
            }

            #demo-1{
                min-height: 84px;
            }

            input[type=date]{
                width: 188px;
                height: 40px;
            }

            input[type=text]{
                width: 188px;
                height: 40px;
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
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="discovery">Discovery</a></li>
                                    <li class="active"><a href="profile.jsp">My Profile</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!--/banner-section-->

        <div class="container" style="margin-top: 30px">
            <div class="main-body">
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card" style="margin-bottom: 30px">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div class="mt-3">
                                        <p class="text-muted font-size-sm">MY ACCOUNT: </p>
                                        <h4>${account.username}</h4><br>
                                        <p class="text-muted font-size-sm">TYPE: </p>
                                        <c:if test="${account.type == true}">
                                            <h4>Host</h4>
                                        </c:if>
                                        <c:if test="${account.type == false}">
                                            <h4>Guest</h4>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div class="mt-3">
                                        <p class="text-muted font-size-sm">Username: </p>
                                        <h4 style="text-transform: none">${account.username}</h4><br>
                                        <form action="changeprofile" method="get">
                                            <input type="hidden" name="user" value="${account.username}">
                                            <input type="hidden" name="type" value="${account.type}">
                                            <input type="hidden" name="cusID" value="${account.cusID}">
                                            <p class="text-muted font-size-sm">Current Password: </p>
                                            <input type="text" name="oldpass">
                                            <br><br>
                                            <p class="text-muted font-size-sm">New Password: </p>
                                            <input type="text" name="newpass"><br><br>
                                            <input type="submit" value="Update">
                                            <c:if test="${successAccount !=null}"><h4 style="display: inline-block;color: green; margin-left: 20px; font-weight: bold">${successAccount}</h4></c:if>
                                            <c:if test="${error !=null}"><h4 style="display: inline-block;color: red; margin-left: 20px; font-weight: bold">${error}</h4></c:if>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <form action="changeprofile" method="post">
                                        <input type="hidden" name="id" value="${customer.cusID}">
                                    <div class="row">
                                        <div class="col-sm-3"><h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" value="${customer.name}" name="name">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Gender</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="radio" name="gender" value="true" ${customer.gender ? "checked" : ""}>&nbsp;<label>Male</label>
                                            &emsp;&emsp;&emsp;
                                            <input type="radio" name="gender" value="false" ${customer.gender ? "" : "checked"}>&nbsp;<label>Female</label>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">DOB</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="date" value="${customer.dob}" name="dob">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Phone</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" value="${customer.phone}" name="phone">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" value="${customer.email}" name="email">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <input type="submit" value="Save changes">
                                            <c:if test="${successCustomer !=null}"><h4 style="display: inline-block;color: green; margin-left: 20px; font-weight: bold">${successCustomer}</h4></c:if>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <%
            session.setAttribute("successCustomer", null);
            session.setAttribute("successAccount", null);
            session.setAttribute("error", null);
        %>

    </body>
</html>

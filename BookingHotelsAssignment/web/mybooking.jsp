<%-- 
    Document   : mybooking
    Created on : Feb 27, 2022, 21:44:02 PM
    Author     : Tai Cao 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Booking</title>
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

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            html{
                background-color: #f5f5f5;
            }

            body {
                color: #404E67;
                background-color: #f5f5f5;
            }
            .table-wrapper {
                width: 100%;
                margin: 30px auto;
                background: #fff;
                padding: 20px;	
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 10px;
                margin: 0 0 10px;
            }
            .table-title h2 {
                margin: 6px 0 0;
                font-size: 22px;
            }
            .table-title .add-new {
                float: right;
                height: 30px;
                font-weight: bold;
                font-size: 12px;
                text-shadow: none;
                min-width: 100px;
                border-radius: 50px;
                line-height: 13px;
            }
            .table-title .add-new i {
                margin-right: 4px;
            }
            table.table {
                table-layout: fixed;
            }
            table.table th,table.table td{
                text-align: center;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table th:last-child {
                width: 100px;
            }
            table.table td a {
                cursor: pointer;
                display: inline-block;
                margin: 0 5px;
                min-width: 24px;
            }    
            table.table td a.add {
                color: #27C46B;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #E34724;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table td a.add i {
                font-size: 24px;
                margin-right: -1px;
                position: relative;
                top: 3px;
            }    
            table.table .form-control {
                height: 32px;
                line-height: 32px;
                box-shadow: none;
                border-radius: 2px;
            }
            table.table .form-control.error {
                border-color: #f50000;
            }
            table.table td .add {
                display: none;
            }

            #demo-1{
                min-height: 84px;
            }

            img{
                width: 150px;
                height: 150px;
            }

            .pagination {
                display: inline-block;
            }
            .pagination a.active {
                background-color: #999999;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: #ff401b;
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
                                    <li class="active"><a href="history">My Booking</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!--/banner-section-->

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8"><h2><b>List Of Bookings</b></h2></div>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Homestay</th>
                            <th>Address</th>
                            <th>Arrival Date</th>
                            <th>Departure Date</th>
                            <th>No.of People</th>
                            <th style="width:15%">Booking Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${arr}" var="i">
                            <tr>
                                <td>${i.homestay.name}</td>
                                <td>${i.homestay.address}</td>
                                <td>${i.datefrom}</td>
                                <td>${i.dateto}</td>
                                <td>${i.people}</td>
                                <td>${i.date}</td>
                            </tr>
                        </c:forEach>   
                    </tbody>
                </table>

                <!--pagination-->
                <div class="text-center">
                    <ul class="pagination">
                        <c:set var="page" value="${page}"/>
                        <c:forEach begin="1" end="${numPage}" var="i">
                            <li><a class="${page==i?"active":""}" href="history?page=${i}">${i}</a></li>
                            </c:forEach>
                    </ul>
                </div>
                <!--pagination-->
            </div>
        </div> 
    </body>
</html>

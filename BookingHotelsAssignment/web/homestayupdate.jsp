<%-- 
    Document   : homestayupdate
    Created on : Feb 24, 2022, 13:06:24 PM
    Author     : Tai Cao 
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Management</title>
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
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="discovery">Discovery</a></li>
                                    <li class="active"><a href="management">My Management</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!--/banner-section-->

        <!-- Update Modal HTML -->
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="update" method="post">
                    <c:set value="${homestay}" var="h"></c:set>
                        <div class="modal-header">						
                            <h4 class="modal-title">Update Homestay id : ${h.id}</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>ID</label>
                            <input name="id" type="text" class="form-control" value="${h.id}" readonly="">
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" value="${h.name}" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input name="address" type="text" class="form-control" value="${h.address}" required>
                        </div>
                        <div class="form-group">
                            <label>Type</label><br>
                            <select name="type" class="form-select">
                                <c:forEach items="${listType}" var="o">
                                    <option value="${o.typeID}" ${o.typeID == h.type.typeID ? "selected" : ""}>${o.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" name="description" class="form-control"required>${h.description}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <textarea type="text" name="image" class="form-control" required>${h.image}</textarea>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Update">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

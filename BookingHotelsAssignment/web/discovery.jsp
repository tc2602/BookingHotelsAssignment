<%-- 
    Document   : discovery
    Created on : Feb 22, 2022, 10:16:24 AM
    Author     : Tai Cao 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

            #filter{
                margin-left: 4em;
            }
        </style>
    </head>

    <body>
        <!--menu-->
        <jsp:include page="menu.jsp" flush="true"/>
        <!--menu-->

        <!--homestay discovery-->
        <div class="special featured">
            <div class="inner-agile-w3l-part-head">
                <h2 class="w3l-inner-h-title">Homestay Discovery</h2>
            </div>

            <!--filter-->
            <c:set value="${filter}" var="f"></c:set>
                <form action="discovery" method="get" style="display:block; margin-left:5%">
                    <!--filter address-->
                    <div class="col-md-2 form-left-agileits-w3layouts second-agile" id="filter">
                        <label class="w3l-inner-h-title"><i class="fa fa-home" aria-hidden="true"></i> Address :</label>
                        <select class="form-control" name="address">
                            <option value="" ${f.address=="" ? "selected" : ""}>None</option>
                        <option value="Ha Noi" ${f.address=="Ha Noi" ? "selected" : ""}>Ha Noi</option>
                        <option value="Ho Chi Minh" ${f.address=="Ho Chi Minh" ? "selected" : ""}>Ho Chi Minh</option>
                        <option value="Da Nang" ${f.address=="Da Nang" ? "selected" : ""}>Da Nang</option>
                        <option value="Vung Tau" ${f.address=="Vung Tau" ? "selected" : ""}>Vung Tau</option>
                        <option value="Da Lat" ${f.address=="Da Lat" ? "selected" : ""}>Da Lat</option>
                        <option value="Nha Trang" ${f.address=="Nha Trang" ? "selected" : ""}>Nha Trang</option>
                    </select>
                </div>

                <!--filter type-->
                <div class="col-md-2 form-left-agileits-w3layouts second-agile" id="filter">
                    <label><i class="fa fa-filter" aria-hidden="true"></i> Type :</label>
                    <select class="form-control" name="type">
                        <option value="" ${f.type=="" ? "selected" : ""}>None</option>
                        <option value="1" ${f.type=="1" ? "selected" : ""}>Log Cabin</option>
                        <option value="2" ${f.type=="2" ? "selected" : ""}>Apartment</option>
                        <option value="3" ${f.type=="3" ? "selected" : ""}>Homestay</option>
                        <option value="4" ${f.type=="4" ? "selected" : ""}>Studio</option>
                        <option value="5" ${f.type=="5" ? "selected" : ""}>Hotel</option>
                        <option value="6" ${f.type=="6" ? "selected" : ""}>Penthouse</option>
                        <option value="7" ${f.type=="7" ? "selected" : ""}>Condominium</option>
                        <option value="8" ${f.type=="8" ? "selected" : ""}>Entire House</option>
                        <option value="9" ${f.type=="9" ? "selected" : ""}>Villa</option>
                        <option value="10" ${f.type=="10" ? "selected" : ""}>Resort</option>
                    </select>
                </div>

                <!--filter price-->
                <div class="col-md-2 form-left-agileits-w3layouts second-agile" id="filter">
                    <label><i class="fa fa-dollar" aria-hidden="true"></i> Price :</label>
                    <span id="slider_value" style="color:orangered;font-weight:bold;margin: auto">${f.price}$</span><br>
                    0$<input name="price" type="range" class="form-range" min="0" max="200" value="${f.price}" onchange="show_value(this.value);" style="display: inline-block;width:150px;margin-top: 10px">200$
                </div>

                <!--filter number of people-->
                <div class="col-md-2 form-left-agileits-w3layouts second-agile" id="filter">
                    <label><i class="fa fa-users" aria-hidden="true"></i> No.of People (Max 30) :</label><br>
                    <input name="people" type="number" min="1" max="30"
                           <c:choose>
                               <c:when test="${f.people==0}">value=""</c:when>
                               <c:otherwise>value="${f.people}"</c:otherwise>
                           </c:choose>
                           style="width:209px;height:34px;">
                </div>

                <input type="submit" value="Filter" style="font-weight: bold; margin: 1.5em;"/>
            </form>
            <!--filter-->

            <div class="container">
                <div class="w3_agileits_services_grids">
                    <c:forEach items="${arr}" var="i">
                        <div class="col-md-3 w3_agileits_services_grid hvr-overline-from-center" id="homestay" style="height: 400px; margin-bottom: 10px">
                            <div class="w3_agileits_services_grid_agile">
                                <div class="w3_agileits_services_grid_1">
                                    <img src="${i.image}" alt="homestay-img" style="width: 239px;height: 159px;">
                                </div>
                                <h3>${i.name}</h3>
                                <p>${i.address}</p>
                                <p>(${i.type.name} - ${i.type.capacity} people)</p>
                                <p>${i.type.price}$/night</p>
                            </div>
                            <div class="agileinf-button" style="margin-top: 15px"> 
                                <a class="read" href="detail?id=${i.id}">BOOK NOW</a>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </div>

                <!--pagination-->
                <div class="text-center">
                    <ul class="pagination">
                        <c:set var="page" value="${requestScope.page}"/>
                        <c:forEach begin="1" end="${requestScope.numPage}" var="i">
                            <li><a class="${page==i?"active":""}" href="discovery?page=${i}&address=${f.address}&type=${f.type}&price=${f.price}&people=${f.people}">${i}</a></li>
                            </c:forEach>
                    </ul>
                </div>
                <!--pagination-->
            </div>
        </div>
        <!-- //homestay discovery -->

        <!--footer-->
        <jsp:include page="footer.jsp" flush="true"/>
        <!--//footer-->

        <script>
            function show_value(x)
            {
                document.getElementById("slider_value").innerHTML = x + "$";
            }
        </script>
    </body>
</html>

<%-- 
    Document   : payment
    Created on : Feb 28, 2022, 23:44:38 PM
    Author     : Tai Cao 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Payment</title>
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

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <style>
            .father{
                display: flex;
                align-items: center;
                justify-content: center;
                padding-top: 30px;
                padding-bottom: 30px;
            }

            .card {
                width: 90%;
                background-color: #f5f5f5;
                padding-bottom: 20px;
            }

            .card-top {
                padding: 0.7rem 5rem;
            }

            .card-top a {
                float: left;
                margin-top: 0.7rem;
            }

            .card-body {
                margin-top: 20px;
            }

            .upper {
                padding: 1rem 0;
                justify-content: space-evenly;
            }

            .icons {
                margin-left: auto;
            }

            form span {
                color: rgb(179, 179, 179);
            }

            form {
                padding: 2vh 0;
            }

            input {
                border: 1px solid rgba(0, 0, 0, 0.137);
                padding: 1vh;
                margin-bottom: 4vh;
                outline: none;
                width: 100%;
                background-color: rgb(247, 247, 247)
            }

            input:focus::-webkit-input-placeholder {
                color: transparent
            }

            .header {
                font-size: 1.5rem;
                margin-bottom: 15px;
            }

            .left img {
                width: 2rem
            }

            .col-md-4{
                margin-right: 10%;
                margin-left: 5%;
            }

            .right .item {
                display: inline-block;
                margin-left: 70px;
            }

            .col-8 {
                padding: 0 1vh
            }

            .lower {
                line-height: 2
            }

            .btn {
                margin-top: 30px;
                margin-right: 50px;
                width: 120px;
                height: 40px;
            }

            #payment{
                background-color: #209a20;
                color:white;
                font-weight: bold;
            }

            #cancel{
                background-color: #ff401b;
            }

            #change{
                background-color: gray;
                color:white;
                font-weight: bold;
            }

            .btn a{
                color: white;
                font-weight: bold;
            }

            #rules{
                font-weight: 900;
                text-transform: none;
            }

            img{
                width:150px;
                height:150px;
            }
        </style>
    </head>
    <body>
        <!--menu-->
        <jsp:include page="menu.jsp" flush="true"/>
        <!--menu-->

        <div class="father">
            <div class="card">
                <div class="card-top border-bottom text-center"><h3 style="text-transform: none; color: orangered">Confirm and complete your payment</h3></div>
                <div class="card-body">
                    <div class="col-md-4">
                        <div class="left border">
                            <span class="header">Booking Information</span>
                            <form action="book" method="post" name="book" onsubmit="checkDate(this)"> 
                                <input type="hidden" name="id" value="${homestay.id}">
                                <label><i class="fa fa-calendar" aria-hidden="true"></i> Arrival Date :</label>
                                <input name="datefrom" type="date" value="${booking.datefrom}"><br><br> 
                                <label><i class="fa fa-calendar" aria-hidden="true"></i> Departure Date :</label> 
                                <input name="dateto" type="date" value="${booking.dateto}"><br><br> 
                                <label><i class="fa fa-users" aria-hidden="true"></i> No.of People :</label>
                                <input name="people" type="number" min="1" max="${homestay.type.capacity}" value="${booking.people}"><br> 
                                <input class="btn" id="change" type="submit" value="Save changes">
                            </form>
                            <br>
                            <h4 id="rules">Damage Policy</h4>
                            <p>You will be responsible for any damage to the rental property caused by you or your party during your stay.</p>
                            <br>
                            <h4 id="rules">House's rules</h4>
                            <p>- ID/Passport or Deposit Required</p>
                            <p>- Avoid making noises after 10 pm</p>
                            <p>- No smoking in shared spaces and common areas</p>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="right border">
                            <div class="header">Your Booking Details</div>
                            <div class="col-4 align-self-center" style="display: inline-block">
                                <img class="img-fluid" src="${homestay.image}">
                            </div>
                            <div class="row item">
                                <div class="col-8">
                                    <div class="row" style="font-size: 25px"><b>${homestay.name}</b></div><br>
                                    <label><i class="fa fa-map-marker" aria-hidden="true"></i> ${homestay.address}</label> 
                                </div>
                            </div>
                            <hr>
                            <div class="row lower">
                                <div class="col text-left"> 
                                    <label><i class="fa fa-calendar-o" aria-hidden="true"></i>&emsp;${numberDate} ${numberDate == 1 ? "night" : "nights"} ( from ${booking.datefrom} to ${booking.dateto})</label><br>
                                    <label><i class="fa fa-user" aria-hidden="true"></i>&emsp;${booking.people} people</label>
                                </div>
                            </div>

                            <hr>
                            <div class="row lower">
                                <div class="col text-left">Rental fee</div>
                                <div class="col text-right">${numberDate * homestay.type.price} $</div>
                            </div>
                            <div class="row lower">
                                <div class="col text-left">Other service fee</div>
                                <div class="col text-right">0 $</div>
                            </div>
                            <div class="row lower">
                                <div class="col text-left"><b>Total</b></div>
                                <div class="col text-right"><b>${numberDate * homestay.type.price} $</b></div>
                            </div>
                            <div class="row lower">
                                <input type="text" value="Enter discount code">
                            </div>
                            <button class="btn" id="cancel" style="background-color: #209a20"><a href="book?id=${homestay.id}&datefrom=${booking.datefrom}&dateto=${booking.dateto}&people=${booking.people}&total=${numberDate * homestay.type.price}">Payment >></a></button>
                            <button class="btn" id="cancel"><a href="discovery">Cancel</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script language="JavaScript" type="text/javascript">
            function checkDate(book) {
                var currDate = new Date();
                var arrDate = new Date(book.datefrom.value);
                var depDate = new Date(book.dateto.value);

                if (arrDate.getTime() < currDate.getTime() || depDate.getTime() < currDate.getTime()) {
                    alert("The date should be after the current date!");
                    return false;
                }

                if (depDate.getTime() <= arrDate.getTime()) {
                    alert("The arrival date should be after the departure date!");
                    return false;
                }

                return true;
            }
        </script>
    </body>
</html>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign up</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <style>
            html,body{
                background-image: url('images/background.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
            }

            h4{
                color: #ffffff;
            }

            .container{
                height: 100%;
                align-content: center;
            }

            .card{
                height: 460px;
                margin-top: 12%;
                width: 52%;
                background-color: rgba(0,0,0,0.5) !important;
            }

            .social_icon span{
                font-size: 60px;
                margin-left: 10px;
                color: orangered;
            }

            .social_icon span:hover{
                color: white;
                cursor: pointer;
            }

            .card-header h3{
                color: white;
            }

            .social_icon{
                position: absolute;
                right: 20px;
                top: -45px;
            }

            .input-group-prepend span{
                width: 50px;
                background-color: orangered;
                color: black;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;

            }

            .remember{
                color: white;
            }

            .remember input
            {
                width: 20px;
                height: 20px;
                margin-left: 15px;
                margin-right: 5px;
            }

            .login_btn{
                color: black;
                background-color: orangered;
                width: 100px;
            }

            .login_btn:hover{
                color: black;
                background-color: white;
            }

            .links{
                color: white;
            }

            .links a{
                margin-left: 4px;
            }

            .form-check-label{
                color: black;
            }

            .form-check{
                margin-top: 2px;
                display: inline-block;
            }

            .part{
                float: left;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign up</h3>
                        <div class="d-flex justify-content-end social_icon">
                            <span><i class="fab fa-facebook-square"></i></span>
                            <span><i class="fab fa-google-plus-square"></i></span>
                            <span><i class="fab fa-twitter-square"></i></span>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="register" method="post">
                            <!--info-->
                            <div class="part">
                                <h4>Info</h4>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <input name="name" type="text" class="form-control" placeholder="Name" required="">
                                </div>
                                <div class="input-group form-group" >
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-mars" style="font-size: 22px"></i></span>
                                    </div>
                                    <div class="form-control">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="1" checked>
                                            <label class="form-check-label">
                                                Male
                                            </label>
                                        </div>
                                        <div class="form-check" style="margin-left: 6%">
                                            <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="0">
                                            <label class="form-check-label">
                                                Female
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                    </div>
                                    <input name="dob" type="date" class="form-control" placeholder="DOB" required="">
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-phone-square"></i></span>
                                    </div>
                                    <input name="phone" type="text" class="form-control" placeholder="Phone" required="">
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input name="email" type="email" class="form-control" placeholder="Email" required="">
                                </div>
                                <div class="input-group form-group" >
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-info-circle"></i></span>
                                    </div>
                                    <div class="form-control">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="type" id="exampleRadios1" value="1" checked>
                                            <label class="form-check-label">
                                                Guest
                                            </label>
                                        </div>
                                        <div class="form-check" style="margin-left: 6%">
                                            <input class="form-check-input" type="radio" name="type" id="exampleRadios2" value="0">
                                            <label class="form-check-label">
                                                Host
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--info-->

                            <!--account-->
                            <div class="part" style="margin-left: 5%;">
                                <h4>Account</h4>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <input name="user" type="text" class="form-control" placeholder="Username" required="">
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input name="pass" type="password" class="form-control" placeholder="Password" required="">
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Register" class="btn float-right login_btn" style="font-weight: bold">
                                </div>

                                <div style="margin-top: 70px; margin-left: 115px">
                                    <c:if test="${error != null}"><p style="color:red">${error}</p></c:if>
                                </div>
                            </div>
                            <!--account-->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Sign Up :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->

    <spring:url value="/ResourcesDash/css/bootstrap.min.css" var="bootstrapmincss"/>
    <link rel="stylesheet" type="text/css" href="${bootstrapmincss}"/>
    <!-- Custom CSS -->

    <spring:url value="/ResourcesDash/css/style.css" var="style"/>
    <link rel="stylesheet" type="text/css" href="${style}"/>
    <!-- Graph CSS -->

    <spring:url value="/ResourcesDash/css/font-awesome.css" var="fontawesome"/>
    <link rel="stylesheet" type="text/css" href="${fontawesome}"/>
    <!-- jQuery -->
    <!-- lined-icons -->

    <spring:url value="/ResourcesDash/css/icon-font.min.css" var="iconfontmin"/>
    <link rel="stylesheet" type="text/css" href="${iconfontmin}"/>
    <!-- //lined-icons -->
    <!-- chart -->

    <spring:url value="/ResourcesDash/js/Chart.js" var="Chart"/>
    <script type="text/javascript" src="${Chart}"></script>
    <!-- //chart -->
    <!--animate-->

    <spring:url value="/ResourcesDash/css/animate.css" var="animate"/>
    <link rel="stylesheet" type="text/css" media="all" href="${animate}"/>


    <spring:url value="/ResourcesDash/js/wow.min.js" var="wowmin"/>
    <script type="text/javascript" src="${wowmin}"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <!----webfonts--->
    <link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
    <!---//webfonts---> 
    <!-- Meters graphs -->

    <spring:url value="/ResourcesDash/js/jquery-1.10.2.min.js" var="jquerymin"/>
    <script type="text/javascript" src="${jquerymin}"></script>
    <!-- Placed js at the end of the document so the pages load faster -->

</head> 

<body class="sign-in-up">
    <section>
        <div id="page-wrapper" class="sign-in-wrapper">
            <div class="graphs">
                <div class="sign-up">
                    <h3>Register Here</h3>
                    <p class="creating">Having hands on experience in creating innovative designs,I do offer design 
                        solutions which harness.</p>
                    <h5>Personal Information</h5>
                    <div class="sign-u">
                        <div class="sign-up1">
                            <h4>First Name* :</h4>
                        </div>
                        <div class="sign-up2">
                            <form>
                                <input type="text" placeholder=" " required=" "/>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="sign-u">
                        <div class="sign-up1">
                            <h4>Last Name* :</h4>
                        </div>
                        <div class="sign-up2">
                            <form>
                                <input type="text" placeholder=" " required=" "/>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="sign-u">
                        <div class="sign-up1">
                            <h4>Email Address* :</h4>
                        </div>
                        <div class="sign-up2">
                            <form>
                                <input type="text" placeholder=" " required=" "/>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <h6>Login Information</h6>
                    <div class="sign-u">
                        <div class="sign-up1">
                            <h4>Password* :</h4>
                        </div>
                        <div class="sign-up2">
                            <form>
                                <input type="password" placeholder=" " required=" "/>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="sign-u">
                        <div class="sign-up1">
                            <h4>Confirm Password* :</h4>
                        </div>
                        <div class="sign-up2">
                            <form>
                                <input type="password" placeholder=" " required=" "/>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="sub_home">
                        <div class="sub_home_left">
                            <form>
                                <input type="submit" value="Submit">
                            </form>
                        </div>
                        <div class="sub_home_right">
                            <p>Go Back to <a href="<%= request.getContextPath()%>/">Home</a></p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer section start-->
        <footer>
            <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
        </footer>
        <!--footer section end-->
        
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Logo</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#portfolio">PORTFOLIO</a></li>
                        <li><a href="#pricing">PRICING</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        
    </section>

 
<spring:url value="/ResourcesDash/js/jquery.nicescroll.js" var="jquerynicescroll"/>
<script type="text/javascript" src="${jquerynicescroll}"></script>


<spring:url value="/ResourcesDash/js/scripts.js" var="scripts"/>
<script type="text/javascript" src="${scripts}"></script>
<!-- Bootstrap Core JavaScript -->

<spring:url value="/ResourcesDash/js/bootstrap.min.js" var="bootstrapminjs"/>
<script type="text/javascript" src="${bootstrapminjs}"></script>
</body>
</html>
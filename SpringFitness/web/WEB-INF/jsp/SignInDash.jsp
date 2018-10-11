
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Sign In :: w3layouts</title>
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
                    <div class="sign-in-form">
                        <div class="sign-in-form-top">
                            <p><span>Sign In to</span> <a href="index.html">Admin</a></p>
                        </div>
                        <div class="signin">
                            <div class="signin-rit">
                                <span class="checkbox1">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked="">Forgot Password ?</label>
                                </span>
                                <p><a href="#">Click Here</a> </p>
                                <div class="clearfix"> </div>
                            </div>
                            <form>
                                <div class="log-input">
                                    <div class="log-input-left">
                                        <input type="text" class="user" value="Yourname" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = 'Email address:';
                                                }"/>
                                    </div>
                                    <span class="checkbox2">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i></label>
                                    </span>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="log-input">
                                    <div class="log-input-left">
                                        <input type="password" class="lock" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = 'Email address:';
                                                }"/>
                                    </div>
                                    <span class="checkbox2">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i></label>
                                    </span>
                                    <div class="clearfix"> </div>
                                </div>
                                <input type="submit" value="Login to your account">
                            </form>	 
                        </div>
                        <div class="new_people">
                            <h4>For New People</h4>
                            <p>Having hands on experience in creating innovative designs,I do offer design 
                                solutions which harness.</p>
                            <a href="<%= request.getContextPath()%>/SignUpDash">Register Now!</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer section start-->
            <footer>
                <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
            </footer>
            <!--footer section end-->
        </section>

        <script src="js/jquery.nicescroll.js"></script>
        <spring:url value="/ResourcesDash/js/jquery.nicescroll.js" var="jquerynicescroll"/>
        <script type="text/javascript" src="${jquerynicescroll}"></script>

        <script src="js/scripts.js"></script>
        <spring:url value="/ResourcesDash/js/scripts.js" var="scripts"/>
        <script type="text/javascript" src="${scripts}"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <spring:url value="/ResourcesDash/js/bootstrap.min.js" var="bootstrapminjs"/>
        <script type="text/javascript" src="${bootstrapminjs}"></script>
    </body>
</html>
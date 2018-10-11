<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>user profile form Responsive Widget Template :: W3layouts</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="User Profile Form A Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Meta tag Keywords -->
        <!-- css files -->
        

        <spring:url value="/resources1/css/style.css" var="style"/>
        <spring:url value="/resources1/css/font-awesome.css" var="fontawesome"/>
        
        
        <link rel="stylesheet" type="text/css" href="${style}"/>
        <link rel="stylesheet" type="text/css" href="${fontawesome}"/>
        <!-- //css files -->
        <!-- online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <!--//online-fonts -->
    </head>
    <body>
        <div class="col-md-12">
            
                <h2><a href="<%= request.getContextPath()%>/" style="color: #fff;">Home</a></h2>
            
        </div>
        
        <div class="header">
            <h1>user profile form</h1>
            
        </div>
        
        <div class="w3-main">
            <div class="form-w3l">
                <div class="img">
                    
                    <img src="<c:url value="/resources1/images/ano7.jpg"/>" alt="images" class="img-responsive" />
                    <h2>signup here</h2>
                </div>	
                <form action="#" method="post">
                    <div class="w3l-user">
                        <span><i class="fa fa-user-circle-o w3l-1" aria-hidden="true"></i></span>
                        <input type="text" name="username" placeholder="username" required=""/>
                        <div class="clear"></div>
                    </div>

                    <div class="w3l-password">
                        <span><i class="fa fa-lock w3l-2" aria-hidden="true"></i></span>
                        <input type="password" name="password" placeholder="password" required=""/>
                        <div class="clear"></div>
                    </div>

                    <div class="w3l-email">
                        <span><i class="fa fa-envelope-o w3l-3" aria-hidden="true"></i></span>
                        <input type="email" name="e-mail" placeholder="info@example.com" required=""/>
                        <div class="clear"></div>
                    </div>

                    <div class="w3l-phone">	
                        <span><i class="fa fa-mobile w3l-4" aria-hidden="true"></i></span>
                        <input type="text" name="phone" placeholder="+001" required=""/>
                        <div class="clear"></div>
                    </div>

                    <div class="w3l-btn">
                        <input type="submit" name="button" value="sign up"/>
                    </div>
                </form>
            </div>
        </div>



        <footer>
            &copy; 2018 user profile form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a>
        </footer>
    </body>
</html>
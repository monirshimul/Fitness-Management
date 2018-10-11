<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Steppy Account Create Form Flat Responsive Widget Template :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Steppy Account Create Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->

        <spring:url value="/resources2/css/style.css" var="style"/>
        <link rel="stylesheet" type="text/css" href="${style}"/>

        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Advent+Pro:100,200,300,400,500,600,700" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
        <!-- //web font --> 
    </head>
    <body>
        <!-- main -->
        <div class="col-md-12">
            <h3><a href="<%= request.getContextPath()%>/" style="color: #fff; text-align: center">Home</a></h3>
        </div>
        <div class="main-agileits">

            <h1>Steppy Account Create Form</h1><br>

            <div class="main-row">
                <ul class="steps">
                    <li class="is-active">Step 1</li>
                    <li>Step 2</li>
                    <li>Step 3</li>
                </ul>
                <form class="form-wrapper" action="#" method="post">
                    <fieldset class="section is-active"> 
                        <h3>Your Details</h3>
                        <input type="text" name="name" id="name" placeholder="Your Name" required="">
                        <input type="email" name="email" id="email" placeholder="Your Email" required="">
                        <div class="button">Next</div> 
                    </fieldset>
                    <fieldset class="section">
                        <h3>Account Type</h3>
                        <div class="row cf">
                            <div class="four w3grids-agile">
                                <input type="radio" name="r1" id="r1" checked>
                                <label for="r1">
                                    <h4>Personal</h4>
                                </label>
                            </div>
                            <div class="four w3grids-agile">
                                <input type="radio" name="r1" id="r2">
                                <label for="r2">
                                    <h4>Professional </h4>
                                </label>
                            </div>
                            <div class="four w3grids-agile">
                                <input type="radio" name="r1" id="r3">
                                <label for="r3">
                                    <h4>Business</h4>
                                </label>
                            </div>
                        </div>
                        <div class="button">Next</div>
                    </fieldset>
                    <fieldset class="section">
                        <h3>Choose a Password</h3>
                        <input type="password" name="password" id="password" placeholder="Password">
                        <input type="password" name="password2" id="password2" placeholder="Re-enter Password">
                        <input class="submit button" type="submit" value="Sign Up">
                    </fieldset>
                    <fieldset class="section">
                        <h3>Account Created !</h3>
                        <p>Your account has been created successfully. </p>
                        <div class="button">Reset Form</div>
                    </fieldset>
                </form>
            </div>	
        </div>	
        <!-- //main -->
        <!-- copyright -->
        <div class="w3copyright-agile">
            <p>© 2017 Steppy Account Create Form. All rights reserved | Design by000</p>
        </div>
        <!-- //copyright --> 
        <!-- js -->

        <spring:url value="/resources2/js/jquery-2.2.3.min.js" var="jquery"/>
        <script type="text/javascript" src="${jquery}"></script>
        <script>
            $(document).ready(function () {
                $(".form-wrapper .button").click(function () {
                    var button = $(this);
                    var currentSection = button.parents(".section");
                    var currentSectionIndex = currentSection.index();
                    var headerSection = $('.steps li').eq(currentSectionIndex);
                    currentSection.removeClass("is-active").next().addClass("is-active");
                    headerSection.removeClass("is-active").next().addClass("is-active");

                    $(".form-wrapper").submit(function (e) {
                        e.preventDefault();
                    });

                    if (currentSectionIndex === 3) {
                        $(document).find(".form-wrapper .section").first().addClass("is-active");
                        $(document).find(".steps li").first().addClass("is-active");
                    }
                });
            });
        </script> 	
        <!-- //js --> 
    </body>
</html>
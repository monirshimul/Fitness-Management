<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Fitness Management</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">




        <!-- Custom CSS -->






        <spring:url value="/resources3/css/bootstrap.min.css" var="bootstrapmin"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapmin}"/>

        <spring:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" var="bootstrapcdn"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapcdn}"/>

        <spring:url value="/resources3/css/style.css" var="style"/>
        <link rel="stylesheet" type="text/css" href="${style}"/>

        <spring:url value="/resources3/js/jquery-2.2.3.min.js" var="jquery"/>
        <script type="text/javascript" src="${jquery}"></script>

        <spring:url value="/resources3/js/bootstrap.min.js" var="bootstrapmin"/>
        <script type="text/javascript" src="${bootstrapmin}"></script>







        <!-- jQuery -->
        <!-- lined-icons -->


        <!-- //lined-icons -->
        <!-- chart -->


        <!-- //chart -->
        <!--animate-->







        <spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" var="ajaxgoogleapis"/>
        <script type="text/javascript" src="${ajaxgoogleapis}"></script>


        <spring:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" var="bootstrapcdnjs"/>
        <script type="text/javascript" src="${bootstrapcdnjs}"></script>


        <link href="//fonts.googleapis.com/css?family=Advent+Pro:100,200,300,400,500,600,700" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->

    </head>
    <body>
        <div class="jumbotron text-center">
            <h1 style="color: #F75D59">FiT FoR FiT</h1> 
            <p style="color:  #fff">Join for 2days free workout here...</p>
            <form class="form-inline" action="<%=request.getContextPath()%>/saveTrailMemberFromIndex" method="post">

                <div class="form-group">
                    <input value="${tm.trailMemberName}" size="50" name="trailMemberName" type="text" class="form-control" id="trailMemberName" placeholder="Enter Your Name">
                </div>
                <br/>
                <br/>
                <div class="form-group">
                    <input value="${tm.phone}" size="50" name="phone" type="text" class="form-control" id="phone" placeholder="Enter Phone No">
                </div>
                <br/>
                <br/>
                <div class="form-group">
                    <input value="${tm.email}" size="50" name="email" type="text" class="form-control" id="email" placeholder="Enter Email">
                </div>
                <br/>
                <br/>


                <button type="submit" class="btn btn-default" style="background-color: #F75D59; color: #ffffff">Submit</button>

            </form>
            <div class="col-md-12">
                <c:if test="${sm !=null}">
                    <div class="alert alert-success alert-dismissable">
                        <a href="#" class="close"data-dismiss="alert" aria-label="close">&times;</a>
                        ${sm}
                    </div>   
                </c:if>
                <c:if test="${em !=null}">
                    <div class="alert alert-danger alert-dismissable">
                        <a href="#" class="close"data-dismiss="alert" aria-label="close">&times;</a>
                        ${em}
                    </div>
                </c:if>
            </div>
        </div>

        <!-- Container (About Section) -->



        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                        <h1 style="color: #fff">Body Building</h1>
                    </div>

                    <p>This is common for training in general but it happens the most frequently with back day. Advanced athletes grow so accustomed to feeling pain—especially in the lower back—they convince themselves to push on because they're training upper back or know how to "work around it." Iron rookies think back soreness just comes with the territory and they move forward because they don't want to appear soft.</p><br>
                    <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly. Err on the side of caution and get it checked out before you hit the weights hard again. You might have to take a little bit of time off, but that's a small price to pay to avoid permanent disc damage or possible surgery.</p>
                    <a href="<%= request.getContextPath()%>/">
                        <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Get in Touch</button>
                    </a>
                </div>
                <div class="col-sm-4">


                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/blade1.jpg"/>" alt="images" class="img-responsive" />
                    </div>



                </div>
            </div>
        </div>

        <div class="container-fluid bg-grey">

            <div class="row">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/ano5.jpg"/>" alt="images" class="img-responsive" />
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                        <h1 style="color: #fff">Sports Fitness</h1>
                    </div>

                    <p>This is common for training in general but it happens the most frequently with back day. Advanced athletes grow so accustomed to feeling pain—especially in the lower back—they convince themselves to push on because they're training upper back or know how to "work around it." Iron rookies think back soreness just comes with the territory and they move forward because they don't want to appear soft.</p><br>
                    <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly. Err on the side of caution and get it checked out before you hit the weights hard again. You might have to take a little bit of time off, but that's a small price to pay to avoid permanent disc damage or possible surgery.</p>
                    <a href="<%= request.getContextPath()%>/">
                        <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Get in Touch</button>
                    </a>

                </div>
            </div>
        </div>

        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                        <h1 style="color: #fff">Light Weight Fitness</h1>
                    </div>

                    <p>This is common for training in general but it happens the most frequently with back day. Advanced athletes grow so accustomed to feeling pain—especially in the lower back—they convince themselves to push on because they're training upper back or know how to "work around it." Iron rookies think back soreness just comes with the territory and they move forward because they don't want to appear soft.</p><br>
                    <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly. Err on the side of caution and get it checked out before you hit the weights hard again. You might have to take a little bit of time off, but that's a small price to pay to avoid permanent disc damage or possible surgery.</p>
                    <a href="<%= request.getContextPath()%>/">
                        <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Get in Touch</button>
                    </a>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/ano1.jpg"/>" alt="images" class="img-responsive" />
                    </div>

                </div>
            </div>
        </div>

        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources3/images/team3.jpg"/>" alt="images" class="img-responsive" />
                    </div> 
                </div>
                <div class="col-sm-8">
                    <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                        <h1 style="color: #fff">Yoga</h1>
                    </div>

                    <p>This is common for training in general but it happens the most frequently with back day. Advanced athletes grow so accustomed to feeling pain—especially in the lower back—they convince themselves to push on because they're training upper back or know how to "work around it." Iron rookies think back soreness just comes with the territory and they move forward because they don't want to appear soft.</p><br>
                    <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly. Err on the side of caution and get it checked out before you hit the weights hard again. You might have to take a little bit of time off, but that's a small price to pay to avoid permanent disc damage or possible surgery.</p>
                    <a href="<%= request.getContextPath()%>/">
                        <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Get in Touch</button>
                    </a>
                </div>
            </div>
        </div>





        <div id="services" class="container-fluid text-center">
            <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                <h1 style="color: #fff">OUR SERVICES</h1>
            </div>


            <br>
            <div class="w3ls-about-grids">
                <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/about1.jpg"/>" alt="images" class="img-responsive" />
                    </div>

                    <div class="layer">
                        <h2>Extra Weight Lifter</h2>
                        <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/about2.jpg"/>" alt="images" class="img-responsive" />
                    </div>

                    <div class="layer">
                        <h2>Best Yoga Support</h2>
                        <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                    <div class="thumbnail">
                        <img src="<c:url value="/resources/images/about3.jpg"/>" alt="images" class="img-responsive" />
                    </div>

                    <div class="layer">
                        <h2>Ultra Modern Machine</h2>
                        <p>There's a difference between being a little sore and being hurt. Back pain may be common, but a back injury is serious and should not be taken lightly.</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>



        <!-- Container (Services Section) -->

        <div id="services" class="container-fluid text-center">
            <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                <h1 style="color: #fff">OUR INFLUENCES</h1>
            </div>


            <br>
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-off logo-small"></span>
                    <h4>POWER</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-heart logo-small"></span>
                    <h4>LOVE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-lock logo-small"></span>
                    <h4>JOB DONE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-leaf logo-small"></span>
                    <h4>GREEN</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>CERTIFIED</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4>HARD WORK</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
            </div>
        </div>






        <!-- Container (Portfolio Section) -->

        <div id="portfolio" class="container-fluid text-center bg-grey">
            <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                <h1 style="color: #fff">OUR TRAINER</h1>
            </div>


            <div class="row text-center">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources3/images/team1.jpg"/>" alt="images" class="img-responsive" />
                        <p><strong>Paris</strong></p>
                        <p>Yes, we built Paris</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources3/images/team2.jpg"/>" alt="images" class="img-responsive" />
                        <p><strong>New York</strong></p>
                        <p>We built New York</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<c:url value="/resources3/images/team3.jpg"/>" alt="images" class="img-responsive" />
                        <p><strong>San Francisco</strong></p>
                        <p>Yes, San Fran is ours</p>
                    </div>
                </div>
            </div>
        </div>




        <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
            <h1 style="text-align: center; color: #fff">What our customers say</h1>
        </div>

        <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="col-md-6">
                        <img src="<c:url value="/resources/images/c3.jpg"/>" alt="images" class="img-responsive"/> 
                    </div>
                    <div class="col-md-6">
                        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>  
                    </div>

                </div>
                <div class="item">
                    <div class="col-md-6">
                        <img src="<c:url value="/resources/images/c2.jpg"/>" alt="images" class="img-responsive"/> 
                    </div>
                    <div class="col-md-6">
                        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>  
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-6">
                        <img src="<c:url value="/resources/images/c1.jpg"/>" alt="images" class="img-responsive"/> 
                    </div>
                    <div class="col-md-6">
                        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>  
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


        <!-- Container (Pricing Section) -->


        <div id="pricing" class="container-fluid">
            <div class="text-center">
                <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                    <h1 style="color: #fff">Pricing</h1>
                </div>

                <h4>Choose a payment plan that works for you</h4>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h3>Silver</h3>
                        </div>
                        <div class="panel-body">
                            <p><strong>1</strong> Year Membership</p>
                            <p><strong>350Tk</strong> Stream</p>
                            <p><strong>Others</strong> /NA</p>
                            <p><strong>Yoga</strong> 3000Tk</p>
                            <p><strong>4</strong> Shift</p>
                            <p><strong>25000</strong> Registration</p>
                        </div>
                        <div class="panel-footer">
                            <h3>2500Tk</h3>
                            <h4>Per month</h4>
                            <a href="<%= request.getContextPath()%>/">
                                <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Sign Up</button>
                            </a>
                        </div>
                    </div> 
                </div> 
                <div class="col-sm-4">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h3>Gold</h3>
                        </div>
                        <div class="panel-body">
                            <p><strong>1</strong> Year Membership</p>
                            <p><strong>0.00Tk</strong> Stream</p>
                            <p><strong>Food</strong> 150Tk</p>
                            <p><strong>Yoga</strong> 2000Tk</p>
                            <p><strong>4</strong> Shift</p>
                            <p><strong>35000</strong> Registration</p>
                        </div>
                        <div class="panel-footer">
                            <h3>3500Tk</h3>
                            <h4>Per month</h4>
                            <a href="<%= request.getContextPath()%>/">
                                <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Sign Up</button>
                            </a>
                        </div>
                    </div> 
                </div> 
                <div class="col-sm-4">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h3>Premium</h3>
                        </div>
                        <div class="panel-body">
                            <p><strong>1</strong> Year Membership</p>
                            <p><strong>0.00Tk</strong> Stream</p>
                            <p><strong>Food</strong> 0.00Tk</p>
                            <p><strong>Yoga</strong> 0.00Tk</p>
                            <p><strong>4</strong> Shift</p>
                            <p><strong>45000</strong> Registration</p>
                        </div>
                        <div class="panel-footer">
                            <h3>4500Tk</h3>
                            <h4>Per month</h4>
                            <a href="<%= request.getContextPath()%>/">
                                <button class="btn btn-default btn-lg " style="background-color: #625D5D; color: #ffffff">Sign Up</button>
                            </a>
                        </div>
                    </div> 
                </div> 
            </div>
        </div>

        <!-- Container (Contact Section) -->

        <div id="contact" class="container-fluid bg-grey">
            <div class="panel panel-primary" style="text-align: center; background-color: #625D5D;">
                <h1 style="color: #fff;text-align: center">CONTACT</h1>
            </div>
            

            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
                    <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p> 
                </div>
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" style="background-color: #8BC34A; color: #ffffff" type="submit">Send</button>
                        </div>
                    </div> 
                </div>
            </div>
        </div>



        <!-- Add Google Maps -->
        <div id="googleMap" style="height:400px;width:100%;"></div>
        <script>
            function myMap() {
                var mapProp = {
                    center: new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 5,
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBX-uOvFHZh2Uq1oHXF1GgZg8a_Tx0cNhE &callback=myMap"></script>





        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Fitness Management</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#portfolio">PORTFOLIO</a></li>
                        <li><a href="#pricing">PRICING</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                        <li><a href="<%= request.getContextPath()%>/loginAdmin">LOGIN</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <p>Bootstrap Theme Made By000</p> 
        </footer>



        <spring:url value="/resources/js/jquery.flexslider.js" var="flexslider"/>
        <script type="text/javascript" src="${flexslider}"></script>

        <!--Start-slider-script-->
        <script type="text/javascript">

            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!--End-slider-script-->
        <!-- //Testimonials script js -->

        <!-- Owl-Carousel-JavaScript -->

        <spring:url value="/resources/js/owl.carousel.js" var="carousel"/>
        <script type="text/javascript" src="${carousel}"></script>
        <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    items: 3,
                    lazyLoad: true,
                    autoPlay: true,
                    pagination: true,
                });
            });
        </script>
        <!-- //Owl-Carousel-JavaScript -->  

        <!-- start-smooth-scrolling -->
        <spring:url value="/resources/js/SmoothScroll.min.js" var="SmoothScroll"/>
        <script type="text/javascript" src="${SmoothScroll}"></script>
        <spring:url value="/resources/js/move-top.js" var="movetop"/>
        <script type="text/javascript" src="${movetop}"></script>
        <spring:url value="/resources/js/easing.js" var="easing"/>
        <script type="text/javascript" src="${easing}"></script>






        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smooth-scrolling -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>













        <script>
            $(document).ready(function () {
                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {

                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });

                $(window).scroll(function () {
                    $(".slideanim").each(function () {
                        var pos = $(this).offset().top;

                        var winTop = $(window).scrollTop();
                        if (pos < winTop + 600) {
                            $(this).addClass("slide");
                        }
                    });
                });
            })
        </script>





    </body>
</html>
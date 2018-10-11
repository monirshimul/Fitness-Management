<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <!-- Head -->
    <head>
        <title>Fitness Goals a Fitness Category Bootstrap responsive Website Template | Home :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Fitness Goals a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <spring:url value="/resources/js/jquery-2.1.4.min.js" var="jquery"/>
        <spring:url value="/resources/js/bootstrap.js" var="bootstrapJS"/>
        <spring:url value="/resources/css/owl.carousel.css" var="owlcarouselcss"/>
        <spring:url value="/resources/css/style.css" var="style"/>
        <spring:url value="/resources/css/bootstrap.css" var="bootstrapcss"/>
        <spring:url value="/resources/css/font-awesome.min.css" var="fontawesomeCSS"/>
        <spring:url value="/resources/css/flexslider.css" var="flexsliderCSS"/>	
        <spring:url value="/resources/css/simplelightbox.css" var="simplelightboxCSS"/>	

        <script type="text/javascript" src="${jquery}"></script>
        <script type="text/javascript" src="${bootstrapJS}"></script>
        <link rel="stylesheet" type="text/css" href="${owlcarouselcss}"/>
        <link rel="stylesheet" type="text/css" href="${bootstrapcss}"/>
        <link rel="stylesheet" type="text/css" href="${fontawesomeCSS}"/>
        <link rel="stylesheet" type="text/css" href="${flexsliderCSS}"/>
        <link rel="stylesheet" type="text/css" href="${simplelightboxCSS}"/>
        <link rel="stylesheet" type="text/css" href="${style}"/>

        <!-- web font-->
        <link href="//fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,latin-ext,vietnamese" rel="stylesheet">
        <!-- //web font-->

    </head>

    <!-- Body -->
    <body>

       
        <!-- banner -->
        <div class="banner">
            <div class="w3ls-slider">
                <div class="banner-dott">
                    <div class="header-top">
                        <div class="container banner-drop">
                            <div class="header">
                                <div class="agile-logo">
                                    <h1><a href="index.html">Fitness</a><span>Goals</span></h1>
                                </div>
                                <ul class="top-links social">
                                    <li><h2><a href="<%= request.getContextPath()%>/IndexDash" style="color: #fff;">Admin</a></h2></li>
                                    <li><h1 style="color: #fff;">/</h1></li>
                                    <li><h2><a href="<%= request.getContextPath()%>/signIn" style="color: #fff;">Sign In</a></h2></li>
                                    <li><h1 style="color: #fff;">/</h1></li>
                                    <li><h2><a href="<%= request.getContextPath()%>/customSignIn" style="color: #fff;">Custom</a></h2></li>
                                    

                                </ul>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="w3_menu">
                                <div class="mobile-nav-button">
                                    <div class="mobile-nav-button__line"></div>
                                    <div class="mobile-nav-button__line"></div>
                                    <div class="mobile-nav-button__line"></div>
                                </div>
                                <nav class="mobile-menu">
                                    <ul>
                                        <li class="active"><a href="">Home</a></li>
                                        <li><a href="#about" class="scroll">About Us</a></li>
                                        <li><a href="#classes" class="scroll">Our Classes</a></li>
                                        <li><a href="#trainers" class="scroll">Our Trainers</a></li>
                                        <li><a href="#portfolio" class="scroll">Portfolio</a></li>
                                        <li><a href="#clients" class="scroll">Clients</a></li>
                                        <li><a href="#contact" class="scroll">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="clearfix"> </div>


                        </div>
                    </div>
                    <div class="w3l-banner-grids">
                        <div class="container">
                            <div class="slider">
                                <div class="callbacks_container">
                                    <ul class="rslides" id="slider4">
                                        <li>
                                            <div class="w3ls-text">
                                                <h2>Lorem ipsum</h2>
                                                <h3>ullamcorper sapien</h3>
                                                <p>Proin convallis leo vitae ligula portti Proin convallis leo vitae ligula elit mollis aliquam portti Proin convallis leo vitae ligula portti</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="w3ls-text">
                                                <h3>Pellen tesque</h3>
                                                <h3>faucibus nunc lectus</h3>
                                                <p>Proin convallis leo vitae ligula portti Proin convallis leo vitae ligula elit mollis aliquam portti Proin convallis leo vitae ligula portti vitae</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="w3ls-text">
                                                <h3>Mauris velit</h3>
                                                <h3>sagittis in rhoncus sed</h3>
                                                <p>Vivamus ut erat sit amet elit mollis aliquam Proin elit mollis aliquam convallis leo vitae ligula portti Proin convallis leo vitae ligula portti</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="w3ls-text">
                                                <h3>consequat arcu</h3>
                                                <h3>quis ligula vel lacus</h3>
                                                <p>Proin convallis leo vitae ligula portti Proin convallis leo vitae ligula elit mollis aliquam portti Proin convallis leo vitae ligula portti</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>


                                <spring:url value="/resources/js/responsiveslides.min.js" var="responsiveslides"/>
                                <script type="text/javascript" src="${responsiveslides}"></script>
                                <script>
                                    // You can also use "$(window).load(function() {"
                                    $(function () {
                                        // Slideshow 4
                                        $("#slider4").responsiveSlides({
                                            auto: true,
                                            pager: true,
                                            nav: false,
                                            speed: 500,
                                            namespace: "callbacks",
                                            before: function () {
                                                $('.events').append("<li>before event fired.</li>");
                                            },
                                            after: function () {
                                                $('.events').append("<li>after event fired.</li>");
                                            }
                                        });

                                    });
                                </script>
                                <!--banner Slider starts Here-->
                            </div>
                        </div>
                                
                                
                                
                                
                                
                                
                                


                       
                                <div class="banner-bottom-grids">
                                    <div class="col-md-3 banner-bottom-grid">
                                        <div class="banner-bottom-grd w3-agile-back">

                                            <h3>Body Building</h3>
                                            <p>officiis aut <span> debits debtis Proin convallis leo vitae</span></p>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 banner-bottom-grid">
                                        <div class="banner-bottom-grd w3-agile-back1">

                                            <h3>Yoga</h3>
                                            <p>officiis aut <span> debits debtis Proin convallis leo vitae</span></p>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 banner-bottom-grid">
                                        <div class="banner-bottom-grd w3-agile-back2">

                                            <h3>Boxing</h3>
                                            <p>officiis aut <span> debits debtis Proin convallis leo vitae</span></p>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 banner-bottom-grid">
                                        <div class="banner-bottom-grd w3-agile-back3">

                                            <h3>Lite Fitness</h3>
                                            <p>officiis aut <span> debits debtis Proin convallis leo vitae</span></p>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"> </div>
                                </div>
                          
                       



                    </div>
                </div>
            </div>
        </div>
        <!-- //banner -->

        <!-- about -->
        <div class="about" id="about">
            <h3 class="heading">Categories</h3>
            <div class="container">
                <div class="w3ls_banner_bottom_grids">
                    <div class="col-md-6 w3_agileits_about_grid_left">
                        <h3>We make </h3>
                        <h3>your fitness goals</h3>
                        <p>Duis turpis arcu, dictum eu tincidunt id, congue vel urna. Quisque posuere, 
                            ipsum eu faucibus cursus, ex tortor elementum leo, eget varius lorem quam a nisl. 
                            Mauris ut enim sed tortor auctor luctus at vitae est. <i>Duis dignissim auctor rhoncus. 
                                Curabitur diam lorem, ultricies eu pellentesque sed, elementum sodales urna. 
                                Pellentesque molestie maximus nisl at ultrices.</i>
                        </p>
                    </div>
                    <div class="col-md-6 w3_agileits_about_grid_right">
                        <iframe src="https://player.vimeo.com/video/37158888"></iframe>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>

        <div class="w3ls-about-grids">
            <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                <img src="<c:url value="/resources/images/about1.jpg"/>" alt="images" class="img-responsive" />
                <div class="layer">
                    <h3>About lorem ipsum dolor sit amet phascellous Lorem</h3>
                    <p>Duis turpis arcu, dictum eu tincidunt id, congue vel urna. Quisque posuere, 
                        ipsum eu faucibus cursus, ex tortor elementum leo,</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                <img src="<c:url value="/resources/images/about2.jpg"/>" alt="images" class="img-responsive" />
                <div class="layer">
                    <h3>About lorem ipsum dolor sit amet phascellous Lorem</h3>
                    <p>Duis turpis arcu, dictum eu tincidunt id, congue vel urna. Quisque posuere, 
                        ipsum eu faucibus cursus, ex tortor elementum leo,</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 abt-btm-grid w3ls-ma">

                <img src="<c:url value="/resources/images/about3.jpg"/>" alt="images" class="img-responsive" />
                <div class="layer">
                    <h3>About lorem ipsum dolor sit amet phascellous Lorem</h3>
                    <p>Duis turpis arcu, dictum eu tincidunt id, congue vel urna. Quisque posuere,
                        ipsum eu faucibus cursus, ex tortor elementum leo,</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //about -->

        <!-- menu --><!-- navigation -->
        <script>
            $(document).ready(function () {
                $('.mobile-nav-button').on('click', function () {
                    $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(1)").toggleClass("mobile-nav-button__line--1");
                    $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(2)").toggleClass("mobile-nav-button__line--2");
                    $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(3)").toggleClass("mobile-nav-button__line--3");

                    $('.mobile-menu').toggleClass('mobile-menu--open');
                    return false;
                });
            });
        </script>
        <!-- //menu --><!-- //navigation -->

        <!-- our classes -->
        <div class="classes" id="classes">
            <h3 class="heading">Our classes</h3>
            <div class="flexslider-info">
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="w3l-info1">
                                    <div class="col-md-6 classes-grid-1">

                                        <img src="<c:url value="/resources/images/class1.jpg"/>" alt="" />
                                    </div>
                                    <div class="col-md-6 classes-grid-2">
                                        <div class="col-md-3 number">
                                            <h3>01</h3>
                                        </div>
                                        <div class="col-md-9 info">
                                            <h4>Aerobics classes</h4>
                                            <h5>Timings : Weekends[5 am to 8am]</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut risus eget libero
                                                finibus facilisis. Phasellus tempus hendrerit sem ut iaculis.Sed sit amet augue sit amet 
                                                mauris gravida inter dum. Donec vulputate tempus sem eget tempus hendreritut.</p>
                                            <div class="readmore-w3">
                                                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l-info1">
                                    <div class="col-md-6 classes-grid-1">

                                        <img src="<c:url value="/resources/images/class2.jpg"/>" alt="" />
                                    </div>
                                    <div class="col-md-6 classes-grid-2">
                                        <div class="col-md-3 number">
                                            <h3>02</h3>
                                        </div>
                                        <div class="col-md-9 info">
                                            <h4>heavy Workout classes</h4>
                                            <h5>Timings : Sat & sun[8 pm to 10am]</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut risus eget libero
                                                finibus facilisis. Phasellus tempus hendrerit sem ut iaculis.Sed sit amet augue sit amet 
                                                mauris gravida inter dum. Donec vulputate tempus sem eget tempus hendreritut.</p>
                                            <div class="readmore-w3">
                                                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l-info1">
                                    <div class="col-md-6 classes-grid-1">

                                        <img src="<c:url value="/resources/images/class3.jpg"/>" alt="" />
                                    </div>
                                    <div class="col-md-6 classes-grid-2">
                                        <div class="col-md-3 number">
                                            <h3>03</h3>
                                        </div>
                                        <div class="col-md-9 info">
                                            <h4>Stretch crossfit classes</h4>
                                            <h5><span>Timings</span> : Mon to fri[5am to 9 pm]</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut risus eget libero
                                                finibus facilisis. Phasellus tempus hendrerit sem ut iaculis.Sed sit amet augue sit amet 
                                                mauris gravida inter dum. Donec vulputate tempus sem eget tempus hendreritut.</p>
                                            <div class="readmore-w3">
                                                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
        <!-- //our classes -->

        <!-- modal popup -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
            <!-- Modal1 -->
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4>Fitness goals</h4>

                        <img src="<c:url value="/resources/images/1.jpg"/>" alt=" " class="img-responsive"/>
                        <h5>Lorem Ipsum</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Modal1 -->

        <!-- team -->
        <div id="trainers" class="team">
            <h3 class="heading">Our Trainers</h3>
            <div class="container">
                <div class="w3_agile_team_grids">
                    <div class="col-md-3 w3_agile_team_grid">
                        <div class="hover14 column">
                            <figure>
                                <img src="<c:url value="/resources/images/team1.jpg"/>" alt=" " class="img-responsive"/>
                            </figure>
                        </div>
                        <h3>jessy Seylon</h3>
                        <p>Trainer</p>
                        <ul class="agileits_social_list">
                            <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 w3_agile_team_grid">
                        <div class="hover14 column">
                            <figure><img src="<c:url value="/resources/images/team2.jpg"/>" alt=" " class="img-responsive"/></figure>
                        </div>
                        <h3>Smith Roy</h3>
                        <p>Trainer</p>
                        <ul class="agileits_social_list">
                            <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 w3_agile_team_grid">
                        <div class="hover14 column">
                            <figure><img src="<c:url value="/resources/images/team3.jpg"/>" alt=" " class="img-responsive"/></figure>
                        </div>
                        <h3>Rosy James</h3>
                        <p>Trainer</p>
                        <ul class="agileits_social_list">
                            <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 w3_agile_team_grid">
                        <div class="hover14 column">
                            <figure><img src="<c:url value="/resources/images/team4.jpg"/>" alt=" " class="img-responsive"/></figure>
                        </div>
                        <h3>Peter vench</h3>
                        <p>Trainer</p>
                        <ul class="agileits_social_list">
                            <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- team -->

        <!-- gallery -->
        <div class="gallery-top" id="portfolio">
            <h3 class="heading">Portfolio</h3>
            <div class="container">
                <div class="gallery">	
                    <div class="gallery-bg">
                        <div class="agileits-gallery gallery-bg-text effect-2">
                            <a href="/resources/images/p1.jpg" class="big">
                                <img src="<c:url value="/resources/images/p1.jpg"/>" alt=" " title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo."/>
                            </a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p2.jpg"><img src="<c:url value="/resources/images/p2.jpg"/>" alt="" title="Donec dictum nisi sit amet ex volutpat interdum."/></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p3.jpg"><img src="<c:url value="/resources/images/p3.jpg"/>" alt="" title="Ut dignissim ipsum dolor, in scelerisque neque commodo sit amet."/></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p4.jpg"><img src="<c:url value="/resources/images/p4.jpg"/>" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p5.jpg"><img src="<c:url value="/resources/images/p5.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo."/></a>
                        </div>
                    </div>
                    <div class="gallery-bg">
                        <div class="agileits-gallery gallery-bg-text effect-2">
                            <a href="/resources/images/p6.jpg" class="big"><img src="<c:url value="/resources/images/p6.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo." /></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p7.png"><img src="<c:url value="/resources/images/p7.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur."/></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p8.jpg"><img src="<c:url value="/resources/images/p8.jpg"/>" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="gallery-bg">
                        <div class="agileits-gallery gallery-bg-text effect-2">
                            <a href="/resources/images/p9.jpg" class="big"><img src="<c:url value="/resources/images/p9.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo." /></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p10.jpg"><img src="<c:url value="/resources/images/p10.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo."/></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p11.jpg"><img src="<c:url value="/resources/images/p11.jpg"/>" alt="" title="Maecenas aliquam nec arcu at efficitur."/></a>
                        </div>
                    </div>
                    <div class="gallery-small gallery-middle">
                        <div class="agileits-gallery gallery-small-text effect-3">
                            <a href="/resources/images/p12.jpg"><img src="<c:url value="/resources/images/p12.jpg"/>" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </div>

                <spring:url value="/resources/js/simple-lightbox.js" var="simplelightbox"/>
                <script type="text/javascript" src="${simplelightbox}"></script>

                <script>
            $(function () {
                var $gallery = $('.gallery a').simpleLightbox();

                $gallery.on('show.simplelightbox', function () {
                    console.log('Requested for showing');
                })
                        .on('shown.simplelightbox', function () {
                            console.log('Shown');
                        })
                        .on('close.simplelightbox', function () {
                            console.log('Requested for closing');
                        })
                        .on('closed.simplelightbox', function () {
                            console.log('Closed');
                        })
                        .on('change.simplelightbox', function () {
                            console.log('Requested for change');
                        })
                        .on('next.simplelightbox', function () {
                            console.log('Requested for next');
                        })
                        .on('prev.simplelightbox', function () {
                            console.log('Requested for prev');
                        })
                        .on('nextImageLoaded.simplelightbox', function () {
                            console.log('Next image loaded');
                        })
                        .on('prevImageLoaded.simplelightbox', function () {
                            console.log('Prev image loaded');
                        })
                        .on('changed.simplelightbox', function () {
                            console.log('Image changed');
                        })
                        .on('nextDone.simplelightbox', function () {
                            console.log('Image changed to next');
                        })
                        .on('prevDone.simplelightbox', function () {
                            console.log('Image changed to prev');
                        })
                        .on('error.simplelightbox', function (e) {
                            console.log('No image found, go to the next/prev');
                            console.log(e);
                        });
            });
                </script>
            </div>
        </div>
        <!-- //gallery -->

        <!-- clients section -->
        <div data-target="clients" class="clients" id="clients">
            <!-- clients -->
            <div class="w3agile-spldishes">
                <h3 class="heading">What client's say</h3>
                <div class="container">
                    <div class="spldishes-agileinfo">
                        <div class="spldishes-grids">
                            <!-- Owl-Carousel -->
                            <div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c1.jpg"/>" class="lazyOwl" alt=" " title="Our latest gallery"/>
                                    <div class="agile-dish-caption">
                                        <h4>marie ker</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div>
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c2.jpg"/>" class="lazyOwl" alt=" " title="Our latest gallery"/>
                                    <div class="agile-dish-caption">
                                        <h4>John reo</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div>
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c3.jpg"/>" class="lazyOwl" alt=" " title="Our latest gallery"/>

                                    <div class="agile-dish-caption">
                                        <h4>Honey Jisa</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div>
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c4.jpg"/>" class="lazyOwl" alt=" " title="Our latest gallery"/>
                                    <div class="agile-dish-caption">
                                        <h4>Hoeld rich</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div>
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c5.jpg"/>" class="lazyOwl" alt=""/>
                                    <div class="agile-dish-caption">
                                        <h4>fernan Deoco</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div> 
                                <div class="item g1">

                                    <img src="<c:url value="/resources/images/c1.jpg"/>" class="lazyOwl" alt=" " title="Our latest gallery"/>
                                    <div class="agile-dish-caption">
                                        <h4>Marie ker</h4>
                                        <span>Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet when an unknown printer took a galley of type. </span>
                                    </div>
                                </div>
                            </div> 
                        </div>  
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //clients --> 
        </div>
        <!-- clients section -->

        <!-- contact -->
        <div id="contact" class="contact">
            <h3 class="heading">Contact</h3>
            <div class="gal-btm">
                <div class="map-home">
                    <div class="col-md-5 drop-pad sign-gd-two">
                        <h3>Contact Address</h3>
                        <ul>
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><strong>Address</strong> : Saint Denis, gym world, <span>Paris.</span></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><strong>Phone </strong> : +027 654 3321</li>
                            <li class="p2">+027 654 3322</li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><strong>Email</strong>  : <a href="mailto:info@example.com">info@example.com</a></li>
                        </ul>
                        <ul class="top-links">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-7 map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83998.94722640373!2d2.27751730651281!3d48.85883773940494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1f06e2b70f%3A0x40b82c3688c9460!2sParis%2C+France!5e0!3m2!1sen!2sin!4v1488544982675"></iframe>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="contactform">
                <div class="container">
                    <h4>Still have any doughts? leave us a message.</h4>
                    <div class="form">
                        <form action="#" method="post">
                            <input type="text" placeholder="Enter Your name" required="">
                            <input type="email" placeholder="Enter Email Address" required="">
                            <input type="text" placeholder="Subject" required="">
                            <textarea placeholder="Message"></textarea>
                            <input type="submit" value="Send Message">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- //contact -->

        <!-- footer -->
        <div class="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="footer-grids">
                        <div class="col-md-5 agile-footer-grid foooter-grid">
                            <h3>Opening Hours</h3>
                            <div class="opening_hours">
                                <ul class="times">
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Monday  ----------------------</span><div class="hours">9:30 am – 3:30 pm</div>  <div class="clearfix"></div></li>
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Tuesday  ---------------------</span><div class="hours">10:30 am – 5:30 pm</div>  <div class="clearfix"></div></li>
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Wednesday  ----------------</span><div class="hours">8:30 am – 1:30 pm</div>  <div class="clearfix"></div></li>
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Thrusday  ------------------</span><div class="hours">11:30 am – 2:30 pm</div>  <div class="clearfix"></div></li>
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Friday  -----------------------</span><div class="hours">10:00 am – 2:00 pm</div>  <div class="clearfix"></div></li>
                                    <li><i class="glyphicon glyphicon-time"> </i><span class="week">Saturday  --------------------</span><div class="hours">11:30 am – 2:30 pm</div>  <div class="clearfix"></div></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 footer-grid">
                            <h3>Navigation</h3>
                            <ul>
                                <li> <a href="#about" class="scroll">About Us</a> </li>
                                <li> <a href="#classes" class="scroll">Classes</a> </li>
                                <li> <a href="#trainers" class="scroll">Trainers</a> </li>
                                <li> <a href="#portfolio" class="scroll">Portfolio</a> </li>
                                <li> <a href="#clients" class="scroll">Clients</a> </li>
                                <li> <a href="#contact" class="scroll">Contact Us</a> </li>
                            </ul>
                        </div>
                        <div class="col-md-5 agile-footer-grid">
                            <h3>Subscribe</h3>
                            <form action="#" method="post">
                                <input type="email" name="Email" placeholder="Email" required="">
                                <input type="submit" value="Send">
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //footer -->

        <!-- copyright -->
        <div class="wthree_copy_right">
            <div class="container">
                <p>Copyright &copy; 2017 Fitness Goals. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>

            </div>
        </div>
        
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

        <!-- //copyright -->


        <!-- Testimonials script js -->
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
        <!-- //here ends scrolling icon -->

    </body>
    <!-- //Body -->
</html>
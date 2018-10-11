<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html ng-app="IndexDashApp">
    <head>
        <title>Admin Panel</title>
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
        
        <spring:url value="/ResourcesDash/js/angular.min.js" var="angularmin"/>
        <script type="text/javascript" src="${angularmin}"></script>
        
        <spring:url value="/ResourcesDash/js2/indexDash.js" var="indexDash"/>
        <script type="text/javascript" src="${indexDash}"></script>
        <!-- Placed js at the end of the document so the pages load faster -->

    </head> 

    <body ng-controller="IndexDashCtrl" class="sticky-header left-side-collapsed"  onload="initMap()">
         
        <section>
            <!-- left side start-->
            <div class="left-side sticky-left-side" style="background-color: #F75D59">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href="<%= request.getContextPath()%>">Admin <span>Panel</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="<%= request.getContextPath()%>"><i class="lnr lnr-home"></i></a>
                    
                </div>

                <!--logo and iconic logo end-->
                <div class="left-side-inner" style="background-color: #F75D59">

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked custom-nav" style="background-color: #F75D59">
                        <li class="active"><a href="<%= request.getContextPath()%>/IndexDash"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
                        <li class="menu-list">
                            <a href="#"><i class="lnr lnr-cog"></i>
                                <span>Components</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="<%= request.getContextPath()%>/AdminDash">Admin</a> </li>
                                <li><a href="<%= request.getContextPath()%>/CatagoryPackageDash">CatagoryPackage</a> </li>
                                <li><a href="<%= request.getContextPath()%>/EmployeeDash">Employee</a> </li>
                                <li><a href="<%= request.getContextPath()%>/InstructorPage">Instructor</a> </li>
                                <li><a href="<%= request.getContextPath()%>/Member">Member</a> </li>
                                <li><a href="<%= request.getContextPath()%>/foodPage">Food</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MemberFood">Member Food</a> </li>
                            </ul>
                        </li>
                        <li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
                            <ul class="sub-menu-list">
                                <li><a href="<%= request.getContextPath()%>/blankPage">Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!--sidebar nav end-->
                </div>
            </div>
            <!-- left side end-->

            <!-- main content start-->
            <div class="main-content">
                <!-- header-starts -->
                <div class="header-section">

                    <!--toggle button start-->
                    <a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
                    <!--toggle button end-->

                    <!--notification menu start -->
                    <div class="menu-right">
                        <div class="user-panel-top">
                            <div class="profile_details">		
                                <ul>
                                    <li class="dropdown profile_details_drop">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            <div class="profile_img">	
                                                <span style="background:url(images/1.jpg) no-repeat center"> </span> 
                                                <div class="user-name">
                                                    <p>Michael<span>Administrator</span></p>
                                                </div>
                                                <i class="lnr lnr-chevron-down"></i>
                                                <i class="lnr lnr-chevron-up"></i>
                                                <div class="clearfix"></div>	
                                            </div>	
                                        </a>
                                        <ul class="dropdown-menu drp-mnu">
                                            <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
                                            <li> <a href="#"><i class="fa fa-user"></i>Profile</a> </li> 
                                            <li> <a href="sign-up.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                        </ul>
                                    </li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--notification menu end -->
                </div>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <div class="col_3">
                            <div class="col-md-3 widget widget1">
                                <div class="r3_counter_box">
                                    <i class="fa fa-mail-forward"></i>
                                    <div class="stats">
                                        <h5>{{totalAdmin}}</h5>
                                        <div class="grow">
                                            <p>Admin</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 widget widget1">
                                <div class="r3_counter_box">
                                    <i class="fa fa-users"></i>
                                    <div class="stats">
                                        <h5>{{totalMember}}</h5>
                                        <div class="grow grow1">
                                            <p>Members</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 widget widget1">
                                <div class="r3_counter_box">
                                    <i class="fa fa-eye"></i>
                                    <div class="stats">
                                        <h5>{{totalEmployee}}</h5>
                                        <div class="grow grow3">
                                            <p>Employees</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 widget">
                                <div class="r3_counter_box">
                                    <i class="fa fa-usd"></i>
                                    <div class="stats">
                                        <h5>{{totalInstructor}}</h5>
                                        <div class="grow grow2">
                                            <p>Instructor</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                        <!-- switches -->
                        <div class="switches">
                            <div class="col-4">
                                <div class="col-md-4 switch-right">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">
                                            <h3>TODAY'S STATS</h3>
                                            <p>Duis aute irure dolor in reprehenderit.</p>
                                            <ul>
                                                <li>Earning: $400 USD</li>
                                                <li>Items Sold: 20 Items</li>
                                                <li>Last Hour Sales: $34 USD</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sparkline">
                                        <canvas id="line" height="150" width="480" style="width: 480px; height: 150px;"></canvas>
                                        <script>
                                            var lineChartData = {
                                                labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon"],
                                                datasets: [
                                                    {
                                                        fillColor: "#fff",
                                                        strokeColor: "#F44336",
                                                        pointColor: "#fbfbfb",
                                                        pointStrokeColor: "#F44336",
                                                        data: [60, 35, 45, 30, 10, 65, 40]
                                                    }
                                                ]

                                            };
                                            new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
                                        </script>
                                    </div>
                                </div>
                                <div class="col-md-4 switch-right">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">
                                            <h3>MONTHLY STATS</h3>
                                            <p>Duis aute irure dolor in reprehenderit.</p>
                                            <ul>
                                                <li>Earning: $5,000 USD</li>
                                                <li>Items Sold: 400 Items</li>
                                                <li>Last Hour Sales: $2,434 USD</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sparkline">
                                        <canvas id="bar" height="150" width="480" style="width: 480px; height: 150px;"></canvas>
                                        <script>
                                            var barChartData = {
                                                labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon", "Tue", "Wed", "Thu"],
                                                datasets: [
                                                    {
                                                        fillColor: "#8BC34A",
                                                        strokeColor: "#8BC34A",
                                                        data: [25, 40, 50, 65, 55, 30, 20, 10, 6, 4]
                                                    },
                                                    {
                                                        fillColor: "#8BC34A",
                                                        strokeColor: "#8BC34A",
                                                        data: [30, 45, 55, 70, 40, 25, 15, 8, 5, 2]
                                                    }
                                                ]

                                            };
                                            new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
                                        </script>
                                    </div>
                                </div>
                                <div class="col-md-4 switch-right">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">
                                            <h3>ALLTIME STATS</h3>
                                            <p>Duis aute irure dolor in reprehenderit.</p>
                                            <ul>
                                                <li>Earning: $80,000 USD</li>
                                                <li>Items Sold: 8,000 Items</li>
                                                <li>Last Hour Sales: $75,434 USD</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sparkline">
                                        <!--graph-->

                                        <spring:url value="/ResourcesDash/css/graph.css" var="graph"/>
                                        <link rel="stylesheet" type="text/css" href="${graph}"/>

                                        <spring:url value="/ResourcesDash/js/jquery.flot.min.js" var="jqueryflotmin"/>
                                        <script type="text/javascript" src="${jqueryflotmin}"></script>
                                        <!--//graph-->
                                        <script>
                                            $(document).ready(function () {

                                                // Graph Data ##############################################
                                                var graphData = [{
                                                        // Returning Visits
                                                        data: [[4, 4500], [5, 3500], [6, 6550], [7, 7600], [8, 4500], [9, 3500], [10, 6550], ],
                                                        color: '#FFCA28',
                                                        points: {radius: 7, fillColor: '#fff'}
                                                    }
                                                ];

                                                // Lines Graph #############################################
                                                $.plot($('#graph-lines'), graphData, {
                                                    series: {
                                                        points: {
                                                            show: true,
                                                            radius: 1
                                                        },
                                                        lines: {
                                                            show: true
                                                        },
                                                        shadowSize: 0
                                                    },
                                                    grid: {
                                                        color: '#fff',
                                                        borderColor: 'transparent',
                                                        borderWidth: 10,
                                                        hoverable: true
                                                    },
                                                    xaxis: {
                                                        tickColor: 'transparent',
                                                        tickDecimals: false
                                                    },
                                                    yaxis: {
                                                        tickSize: 1200
                                                    }
                                                });

                                                // Graph Toggle ############################################
                                                $('#graph-bars').hide();

                                                $('#lines').on('click', function (e) {
                                                    $('#bars').removeClass('active');
                                                    $('#graph-bars').fadeOut();
                                                    $(this).addClass('active');
                                                    $('#graph-lines').fadeIn();
                                                    e.preventDefault();
                                                });

                                                $('#bars').on('click', function (e) {
                                                    $('#lines').removeClass('active');
                                                    $('#graph-lines').fadeOut();
                                                    $(this).addClass('active');
                                                    $('#graph-bars').fadeIn().removeClass('hidden');
                                                    e.preventDefault();
                                                });

                                            });
                                        </script>
                                        <div id="graph-wrapper">
                                            <div class="graph-container">
                                                <div id="graph-lines"> </div>
                                                <div id="graph-bars"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <!-- //switches -->
                    </div>
                    <!--body wrapper start-->
                </div>
                <!--body wrapper end-->
            </div>
            <!--footer section start-->
            <footer>
                <p>&copy 2018 All Rights Reserved.</p>
            </footer>
            <!--footer section end-->

            <!-- main content end-->
            
            
            
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
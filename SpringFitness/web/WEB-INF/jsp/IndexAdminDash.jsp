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

        <spring:url value="/ResourcesDash/js2/indexAdminDash.js" var="indexAdminDash"/>
        <script type="text/javascript" src="${indexAdminDash}"></script>
        <!-- Placed js at the end of the document so the pages load faster -->

    </head> 

    <body ng-controller="IndexDashCtrl" class="sticky-header left-side-collapsed"  onload="initMap()">

        <section>
            <!-- left side start-->
            <div class="left-side sticky-left-side" style="background-color: #F75D59">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href="<%= request.getContextPath()%>/IndexAdminDash">Admin <span>Panel</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="<%= request.getContextPath()%>/IndexAdminDash"><i class="lnr lnr-home"></i></a>

                </div>

                <!--logo and iconic logo end-->
                <div class="left-side-inner" style="background-color: #F75D59">

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked custom-nav" style="background-color: #F75D59">
                        <li class="active"><a href="<%= request.getContextPath()%>/IndexAdminDash"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
                        <li class="menu-list">
                            <a href="#"><i class="lnr lnr-cog"></i>
                                <span>Components</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="<%= request.getContextPath()%>/AdminDash">Admin</a> </li>
                                <li><a href="<%= request.getContextPath()%>/CatagoryPackageDash">CatagoryPackage</a> </li>
                                <li><a href="<%= request.getContextPath()%>/EmployeeDash">Employee</a> </li>
                                <li><a href="<%= request.getContextPath()%>/InstructorPage">Instructor</a> </li>
                                <li><a href="<%= request.getContextPath()%>/Member">Member</a> </li>
                                <li><a href="<%= request.getContextPath()%>/trailmemberpage">Trail Member</a> </li>
                                <li><a href="<%= request.getContextPath()%>/workoutpage">Workout</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MemberWorkoutPage">Member Workout</a> </li>
                                <li><a href="<%= request.getContextPath()%>/dietfoodpage">Diet Food</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MemberDietFood">Member Diet Food</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MonthlyExpenseDash">Monthly Expense</a> </li>
                                <li><a href="<%= request.getContextPath()%>/SalaryPage">Salary</a> </li>
                            </ul>
                        </li>
                        <li><a href="<%= request.getContextPath()%>/logOutAdmin"><i class="lnr lnr-select"></i> <span>LogOut</span></a></li>
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
                                                    <p><c:out value="${sessionScope.logAdmin.name}"/><span>Admin</span></p>
                                                </div>

                                            </div>	
                                        </a>
                                        <ul class="dropdown-menu drp-mnu">
                                            <li> <a href="<%= request.getContextPath()%>/logOutAdmin"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
                                <div class="col-md-offset-1 col-md-6 switch-right">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">
                                            <h3>MONTHLY EXPENSE STATS</h3> 
                                            <p>You can see monthly based company expense chart here</p>
                                            <ul>
                                                <li>Total Floor Rent: {{floorRent}} Taka </li>
                                                <li>Total Electricity Bill: {{electricityBill}} Taka </li>
                                                <li>Total Water Bill: {{waterBill}} Taka </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sparkline">
                                        <canvas id="line" height="150" width="480" style="width: 480px; height: 150px;"></canvas>
                                        <script>

                                                    var lineChartData = {
                                                        labels: ["July", "August", "September", "October", "November", "December", "January", "February", "March", "April", "May", "Jun"],
                                                        datasets: [
                                                            {
                                                                fillColor: "#fff",
                                                                strokeColor: "#F44336",
                                                                pointColor: "#fbfbfb",
                                                                pointStrokeColor: "#F44336",
                                                                data: [57, 55, 56, 55, 55, 57, 54, 56, 0, 0, 0, 0]
                                                            }
                                                        ]

                                                    };
                                                    new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
                                        </script>
                                    </div>
                                </div>
                                <div class="col-md-offset-2 col-md-6 switch-right">
                                    <div class="switch-right-grid">
                                        <div class="switch-right-grid1">
                                            <h3>MONTHLY SALARY STATS</h3>
                                            <p>You can see monthly based Salary chart here</p>
                                            <ul>
                                                <li>Total Salary: {{salary}} Taka </li>
                                                <li>Total Bonus: {{bonus}} Taka </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sparkline">
                                        <canvas id="bar" height="150" width="480" style="width: 480px; height: 150px;"></canvas>
                                        <script>
                                                    var barChartData = {
                                                        labels: ["July", "August", "September", "October", "November", "December", "January", "February", "March", "April", "May", "Jun"],
                                                        datasets: [
                                                            {
                                                                fillColor: "#8BC34A",
                                                                strokeColor: "#8BC34A",
                                                                data: [0, 13, 16, 20, 13, 13, 20, 10, 11, 12, 10, 15]
                                                            },
                                                            {
                                                                fillColor: "#8BC34A",
                                                                strokeColor: "#8BC34A",
                                                                data: [0, 14, 18, 12, 14, 18, 15, 16, 12, 16, 14, 18]
                                                            }
                                                        ]

                                                    };
                                                    new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
                                        </script>
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
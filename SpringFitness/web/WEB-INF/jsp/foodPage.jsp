<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
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
        <!-- Placed js at the end of the document so the pages load faster -->

    </head> 

    <body class="sticky-header left-side-collapsed"  onload="initMap()">

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
                                <li><a href="<%= request.getContextPath()%>/foodPage">Food</a> </li>
                                <li><a href="<%= request.getContextPath()%>/dietfoodpage">Diet Food</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MonthlyExpenseDash">Monthly Expense</a> </li>
                                <li><a href="<%= request.getContextPath()%>/SalaryPage">Salary</a> </li>
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
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!--notification menu end -->
                </div>
                <!-- //header-ends -->
                <!--body wrapper start-->
                <div class="container">
                    <div class="row">

                        <div class="col-md-12">
                            <c:if test="${sm != null}">
                                <div class="alert alert-success alert-dismissable">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>

                                    ${sm}

                                </div>
                            </c:if>
                            <c:if test="${em != null}">
                                <div class="alert alert-danger alert-dismissable">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>

                                    ${em}

                                </div>
                            </c:if>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-4">

                            <div class="panel panel-primary">
                                <div class="panel-heading" style="background-color: #F75D59; color: #ffffff">
                                    Save Food Info
                                </div>
                                <div class="panel-body">
                                    <c:if test="${food.foodId == null}">
                                        <form action="<%= request.getContextPath()%>/saveFood" method="post">
                                        </c:if>
                                        <c:if test="${food.foodId != null}">
                                            <form action="<%= request.getContextPath()%>/updateFood" method="post">
                                            </c:if>
                                            <div class="form-group">
                                                <label for="fid">FId:</label>
                                                <input value="${food.foodId}" readonly="1" name="fid" type="text" class="form-control" id="fid">
                                            </div>
                                            <div class="form-group">
                                                <label for="fname">Customer Name:</label>
                                                <input value="${food.foodName}" name="fname" type="text" class="form-control" id="fname">
                                            </div>
                                            <div class="form-group">
                                                <label for="quantity">Quantity:</label>
                                                <input value="${food.quantity}" name="quantity" type="text" class="form-control" id="quantity">
                                            </div>
                                            <div class="form-group">
                                                <label for="calorie">Calorie:</label>
                                                <input value="${food.calorie}" name="calorie" type="text" class="form-control" id="calorie">
                                            </div>



                                            <c:if test="${food.foodId == null}">
                                                <button type="submit" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">Submit</button>
                                            </c:if>

                                            <c:if test="${food.foodId != null}">
                                                <button type="submit" class="btn btn-warning" style="background-color: #F75D59; color: #ffffff">Update</button>
                                                <a href="<%= request.getContextPath()%>/foodPage" class="btn btn-default pull-right" style="background-color: #8BC34A; color: #ffffff">New</a>
                                            </c:if>
                                        </form>
                                </div>
                                <div class="panel-footer">

                                </div>
                            </div>

                        </div>
                        <div class="col-md-8">
                            <table class="table table-bordered table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>FID</th>
                                        <th>Fname</th>
                                        <th>Quantity</th>
                                        <th>Calorie</th>

                                        <th colspan="2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="row" items="${foods}">
                                        <tr>
                                            <td>${row.foodId}</td>
                                            <td>${row.foodName}</td>
                                            <td>${row.quantity}</td>
                                            <td>${row.calorie}</td>
                                            <td><a href="<%= request.getContextPath()%>/editFood/${row.foodId}">EDIT</a></td>
                                            <td><a onclick="return confirm('Are you want to delete this item?')"  href="<%= request.getContextPath()%>/deleteFood/${row.foodId}">DELETE</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
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
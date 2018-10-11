<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html ng-app="SalaryApp">
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

        <spring:url value="/ResourcesDash/js2/salary.js" var="salary"/>
        <script type="text/javascript" src="${salary}"></script>
        <!-- Placed js at the end of the document so the pages load faster -->

    </head> 

    <body ng-controller="SalaryCtrl" class="sticky-header left-side-collapsed"  onload="initMap()">

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
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!--notification menu end -->
                </div>
                <!-- //header-ends -->
                <!--body wrapper start-->
                <div class="container">
                    <div class="row">
                        <br/>
                        <div class="col-lg-offset-5 col-lg-2">
                            <select name="month" 
                                    ng-model="searchSalary.month" 
                                    class="form-control" 
                                    ng-options="x for x in months">
                            </select>
                        </div>
                        <div class="col-lg-2">
                            <select name="month" 
                                    ng-model="searchSalary.year" 
                                    class="form-control" 
                                    ng-options="x for x in years">
                            </select>
                        </div>
                        <div class="col-lg-1">
                            <button type="submit" ng-click="searchByMonthYear()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
                                Search
                            </button>
                        </div>
                        <div class="col-lg-1">
                            <button type="submit" ng-click="getAllSalary()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
                                All Data
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="panel panel-primary">
                                <div class="panel-heading" style="background-color: #F75D59; color: #ffffff">
                                    <h4 style="text-align: center">Salary Form</h4>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="eid" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Employee Name</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <select name="eid" 
                                                        ng-model="newEmployee" 
                                                        class="form-control" 
                                                        ng-options="employee.employeeName for employee in employees">
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label for="salary" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Salary: </h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newSalary.salary" id="salary"
                                                       placeholder="Enter Salary" type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="ptc" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Personal trainer Commision: </h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newSalary.personalTrainerCommision" id="ptc"
                                                       placeholder="Enter Personal trainer Commision" type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="bonus" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Bonus:  </h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newSalary.bonus" id="bonus"
                                                       placeholder="Enter Bonus" type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="month" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Month: </h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <select name="month" 
                                                        ng-model="newSalary.month" 
                                                        class="form-control" 
                                                        ng-options="x for x in months">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="year" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Year: </h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newSalary.year" id="year"
                                                       placeholder="Enter Year" type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-lg-9">
                                                <button type="submit" ng-click="saveSalary()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
                                                    Save
                                                </button>
                                                <button type="reset" class="btn btn-success pull-right" style="background-color: #F75D59; color: #ffffff">
                                                    Reset
                                                </button>
                                            </div>

                                        </div>

                                    </form>
                                </div>
                                <div class="panel-footer">
                                    {{message}}
                                    {{error_message}}
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-7">
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th><h5>salaryId: </h5></th>
                                        <th><h5>employeeId: </h5></th>
                                        <th><h5>salary: </h5></th>
                                        <th><h5>personalTrainerCommision: </h5></th>
                                        <th><h5>bonus: </h5></th>
                                        <th><h5>month: </h5></th>
                                        <th><h5>year: </h5></th>
                                        <th colspan="2"><h5>Action</h5></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="sal in salarys">
                                        <td>{{sal.salaryId}}</td>
                                        <td>{{sal.employeeId}}</td>
                                        <td>{{sal.salary}}</td>
                                        <td >{{sal.personalTrainerCommision}}</td>
                                        <td >{{sal.bonus}}</td>
                                        <td >{{sal.month}}</td>
                                        <td >{{sal.year}}</td>
                                        <td>
                                            <button class="btn btn-success" style="background-color: #F75D59; color: #ffffff" ng-click="selectSalary(sal)" type="button"
                                                    data-toggle="modal" data-target="#editModal">
                                                Edit
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>



                        <div id="editModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" style="background-color: #F75D59; color: #ffffff">Edit Instructor</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="sid" class="control-label col-lg-4">
                                                    Salary Id:
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickSalary.salaryId" readonly="true" id="sid"
                                                           placeholder="Enter Id" type="text"/>
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <label for="eid" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Employee Name</h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <select name="eid" 
                                                            ng-model="newEmployee" 
                                                            class="form-control" 
                                                            ng-options="employee.employeeName for employee in employees track by employee.employeeId">
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <label for="salary" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Salary: </h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickSalary.salary" id="salary"
                                                           placeholder="Enter Salary" type="text"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="ptc" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Personal trainer Commision: </h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickSalary.personalTrainerCommision" id="ptc"
                                                           placeholder="Enter Personal trainer Commision" type="text"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="bonus" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Bonus:  </h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickSalary.bonus" id="bonus"
                                                           placeholder="Enter Bonus" type="text"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="month" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Month: </h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <select name="month" 
                                                            ng-model="clickSalary.month" 
                                                            class="form-control" 
                                                            ng-options="x for x in months">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="year" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Year: </h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickSalary.year" id="year"
                                                           placeholder="Enter Year" type="text"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-lg-9">
                                                    <button type="button" ng-click="updateSalary()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
                                                        Update
                                                    </button>
                                                    <button type="reset" class="btn btn-success pull-right" style="background-color: #F75D59; color: #ffffff">
                                                        Reset
                                                    </button>
                                                </div>

                                            </div>

                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        {{message}}
                                        <button type="button" class="btn btn-success" style="background-color: #F75D59; color: #ffffff"
                                                data-dismiss="modal">
                                            Close
                                        </button>
                                    </div>

                                </div>

                            </div>

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
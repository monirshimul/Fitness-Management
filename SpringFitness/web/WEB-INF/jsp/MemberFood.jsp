<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html ng-app="MfApp">
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

        <spring:url value="/ResourcesDash/js2/memberFood.js" var="memberFood"/>
        <script type="text/javascript" src="${memberFood}"></script>
        <!-- Placed js at the end of the document so the pages load faster -->

    </head> 

    <body ng-controller="MfCtrl" class="sticky-header left-side-collapsed"  onload="initMap()">

        <section>
            <!-- left side start-->
            <div class="left-side sticky-left-side" style="background-color: #F75D59">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href="<%= request.getContextPath()%>/IndexDash">Admin <span>Panel</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="<%= request.getContextPath()%>/IndexDash"><i class="lnr lnr-home"></i></a>

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
                                <li><a href="<%= request.getContextPath()%>/trailmemberpage">Trail Member</a> </li>
                                <li><a href="<%= request.getContextPath()%>/workoutpage">Workout</a> </li>
                                <li><a href="<%= request.getContextPath()%>/MemberWorkoutPage">Member Workout</a> </li>
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
                        <div class="col-lg-5">
                            <div class="panel panel-primary">
                                <div class="panel-heading" style="background-color: #F75D59; color: #ffffff">
                                    <h4 style="text-align: center">Member Food Form</h4>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="mid" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Member Name</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <select name="mid" 
                                                        ng-model="newMember" 
                                                        class="form-control" 
                                                        ng-options="member.memberName for member in members">
                                                </select>
                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <label for="day" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Date:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.date" id="day"
                                                       placeholder="Enter Date" type="text"/>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="fid" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Food Id:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <select name="fid" 
                                                        ng-model="newFood" 
                                                        class="form-control" 
                                                        ng-options="food.foodName +  ' (' +  food.foodName +  ')' for food in foods">
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="qty" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Quantity</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.quantity" id="qty"
                                                       placeholder="Enter Qty" type="text"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="totalCal" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Total Cal:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.totalCalories" id="totalCal"
                                                       placeholder="Enter Cal" type="text"/>
                                            </div>
                                        </div>




                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-lg-9">
                                                <button type="submit" ng-click="saveMemberFood()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
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
                                        <th><h5>MFId:</h5></th>
                                        <th><h5>MId:</h5></th>
                                        <th><h5>Date:</h5></th>
                                        <th><h5>FId:</h5></th>
                                        <th><h5>Qty:</h5></th>
                                        <th><h5>Cal:</h5></th>
                                        <th colspan="2"><h5>Action</h5></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="mf in memberFoods">
                                        <td>{{mf.memberFoodId}}</td>
                                        <td>{{mf.memberId}}</td>
                                        <td>{{mf.day}}</td>
                                        <td >{{mf.foodId}}</td>
                                        <td >{{mf.quantity}}</td>
                                        <td >{{mf.totalCalories}}</td>
                                        <td>
                                            <button class="btn btn-success" style="background-color: #F75D59; color: #ffffff" ng-click="selectMemberFood(mf)" type="button"
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
                                        <h4 class="modal-title" style="background-color: #F75D59; color: #ffffff">Edit Member Food</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="mfid" class="control-label col-lg-4">
                                                    Member Food Id:
                                                </label>
                                                <div class="col-lg-8">
                                                    <input class="form-control" ng-model="clickMemberFood.memberFoodId" readonly="true" id="mfid"
                                                           placeholder="Enter Id" type="text"/>
                                                </div>

                                            </div>


                                            <div class="form-group">
                                                <label for="mid" class="control-label col-lg-4">

                                                    <h5 style="text-align: center">Member Name</h5>
                                                </label>
                                                <div class="col-lg-8">
                                                    <select name="mid" 
                                                            ng-model="newMember" 
                                                            class="form-control" 
                                                            ng-options="member.memberName for member in members">
                                                    </select>
                                                </div>

                                            </div>








                                   <div class="form-group">
                                            <label for="day" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Date:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.date" id="day"
                                                       placeholder="Enter Date" type="text"/>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="fid" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Food Id:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <select name="fid" 
                                                        ng-model="newFood" 
                                                        class="form-control" 
                                                        ng-options="food.foodName +  ' (' +  food.foodName +  ')' for food in foods">
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="qty" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Quantity</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.quantity" id="qty"
                                                       placeholder="Enter Qty" type="text"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="totalCal" class="control-label col-lg-4">

                                                <h5 style="text-align: center">Total Cal:</h5>
                                            </label>
                                            <div class="col-lg-8">
                                                <input class="form-control" ng-model="newMemberFood.totalCalories" id="totalCal"
                                                       placeholder="Enter Cal" type="text"/>
                                            </div>
                                        </div>
                                            
                                            
                                            
                                            
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-lg-9">
                                                    <button type="button" ng-click="updateMemberFood()" class="btn btn-success" style="background-color: #F75D59; color: #ffffff">
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
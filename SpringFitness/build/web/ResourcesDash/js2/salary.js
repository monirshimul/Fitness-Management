/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("SalaryApp", []);

myApp.controller("SalaryCtrl", function ($scope, $http) {
    $scope.message="";
    $scope.error_message="";
    $scope.salarys = [];
    
    $scope.getAllSalary = function () {
        $http({
            method: 'GET',
            url: 'salary/getAllSalary'
        }).then(
                function (response) {
                    $scope.salarys = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllSalary();
    
    $scope.newSalary={};
    $scope.newEmployee={};
    
    $scope.employees = [];
    $scope.getAllEmployee = function () {
        $http({
            method: 'GET',
            url: 'salary/getAllEmployee'
        }).then(
                function (response) {
                    $scope.employees = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllEmployee();
    
    $scope.saveSalary=function(){
        
        $scope.newSalary.employeeId= $scope.newEmployee.employeeId;
        
        $http({
            method: 'POST',
            url: 'salary/saveSalary',
            data: angular.toJson($scope.newSalary),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Salary Saved";
                    $scope.getAllSalary();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickSalary={};
    $scope.selectSalary=function(salary){
        $scope.clickSalary=salary;
        $scope.clickSalary.month=salary.month;
        
        $http({
            method: 'POST',
            url: 'salary/getEmployeeForEdit',
            data: angular.toJson($scope.clickSalary.employeeId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newEmployee= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    $scope.updateSalary=function(){
        
        $scope.clickSalary.employeeId= $scope.newEmployee.employeeId;
        
        $http({
            method: 'POST',
            url: 'salary/updateSalary',
            data: angular.toJson($scope.clickSalary),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="Salary Information updated";
                    $scope.getAllSalary();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    $scope.months = ["January", "February", "March", "April", "May", "Jun", 
        "july", "August", "September", "October", "November", "December"];
    
    $scope.years = ["2017", "2018", "2019"];
    
    $scope.searchSalary={};
    $scope.searchByMonthYear=function(){
        
        $http({
            method: 'POST',
            url: 'salary/searchByMonthYear',
            data: angular.toJson($scope.searchSalary),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.salarys= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    
});
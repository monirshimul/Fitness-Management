/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("InsApp", []);

myApp.controller("InsCtrl", function ($scope, $http) {
    
    $scope.message="";
    $scope.error_message="";
    $scope.instructors = [];
    
    $scope.getAllInstructor = function () {
        $http({
            method: 'GET',
            url: 'instructor/getAllInstructor'
        }).then(
                function (response) {
                    $scope.instructors = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };


    $scope.getAllInstructor();
    
    $scope.newInstructor={};
    $scope.newEmployee={};
    $scope.newCategoryPackage={};
    
    $scope.employees = [];
    $scope.getAllEmployee = function () {
        $http({
            method: 'GET',
            url: 'instructor/getAllEmployee'
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
    
    $scope.categoryPackages = [];
    $scope.getAllCategoryPackage = function () {
        $http({
            method: 'GET',
            url: 'instructor/getAllCategoryPackage'
        }).then(
                function (response) {
                    $scope.categoryPackages = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllCategoryPackage();
    
    $scope.saveInstructor=function(){
        
        $scope.newInstructor.employeeId= $scope.newEmployee.employeeId;
        $scope.newInstructor.categoryPackageId= $scope.newCategoryPackage.categoryPackageId;
        
        $http({
            method: 'POST',
            url: 'instructor/saveInstructor',
            data: angular.toJson($scope.newInstructor),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Instructor Saved";
                    $scope.getAllInstructor();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickInstructor={};
    $scope.selectInstructor=function(instructor){
        $scope.clickInstructor=instructor;
        
        $http({
            method: 'POST',
            url: 'instructor/getEmployeeForEdit',
            data: angular.toJson($scope.clickInstructor.employeeId),
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
//        alert("   "+ $scope.clickInstructor.employeeId+" "+ $scope.clickInstructor.categoryPackageId);

        $http({
            method: 'POST',
            url: 'instructor/getCategoryandPackageForEdit',
            data: angular.toJson($scope.clickInstructor.categoryPackageId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newCategoryPackage= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    
    
    $scope.updateInstructor=function(){
        
        $scope.clickInstructor.employeeId= $scope.newEmployee.employeeId;
        $scope.clickInstructor.categoryPackageId= $scope.newCategoryPackage.categoryPackageId;
        
        $http({
            method: 'POST',
            url: 'instructor/updateInstructor',
            data: angular.toJson($scope.clickInstructor),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="Instructor Information updated";
                    $scope.getAllProduct();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
}
);
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("MemApp", []);

myApp.controller("MemCtrl", function ($scope, $http) {
    
    $scope.message="";
    $scope.error_message="";
    $scope.members = [];
    
    $scope.getAllMember = function () {
        $http({
            method: 'GET',
            url: 'member/getAllMember'
        }).then(
                function (response) {
                    $scope.members = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };


    $scope.getAllMember();
    
    $scope.newMember={};
    $scope.newInstructor={};
    $scope.newCategoryPackage={};
    
    $scope.instructors = [];
    $scope.getAllInstructor = function () {
        $http({
            method: 'GET',
            url: 'member/getAll'
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
    
    $scope.categoryPackages = [];
    $scope.getAllCategoryPackage = function () {
        $http({
            method: 'GET',
            url: 'member/getAllCategoryPackage'
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
    
    $scope.saveMember=function(){
        
        $scope.newMember.instructorId= $scope.newInstructor.instructorId;
        $scope.newMember.categoryPackageId= $scope.newCategoryPackage.categoryPackageId;
        
        $http({
            method: 'POST',
            url: 'member/saveMember',
            data: angular.toJson($scope.newMember),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Member Saved";
                    $scope.getAllMember();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickMember={};
    $scope.selectMember=function(member){
        $scope.clickMember=member;
        
        $http({
            method: 'POST',
            url: 'member/getInstructorForEdit',
            data: angular.toJson($scope.clickMember.instructorId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newInstructor= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
//        alert("   "+ $scope.clickInstructor.employeeId+" "+ $scope.clickInstructor.categoryPackageId);

        $http({
            method: 'POST',
            url: 'member/getCategoryandPackageForEdit',
            data: angular.toJson($scope.clickMember.categoryPackageId),
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
    
    
    
    $scope.updateMember=function(){
        
        $scope.clickMember.instructorId= $scope.newInstructor.instructorId;
        $scope.clickMember.categoryPackageId= $scope.newCategoryPackage.categoryPackageId;
        
        $http({
            method: 'POST',
            url: 'member/updateMember',
            data: angular.toJson($scope.clickMember),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="Member Information updated";
                    $scope.getAllMember();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
}
);
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("MfApp", []);

myApp.controller("MfCtrl", function ($scope, $http) {
    
    $scope.message="";
    $scope.error_message="";
    $scope.memberFoods = [];
    
    $scope.getAllMemberFood = function () {
        $http({
            method: 'GET',
            url: 'memberFood/getAllMemberFood'
        }).then(
                function (response) {
                    $scope.memberFoods = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };


    $scope.getAllMemberFood();
    
    $scope.newMemberFood={};
    $scope.newMember={};
    $scope.newFood={};
    
    $scope.members = [];
    $scope.getAllMember = function () {
        $http({
            method: 'GET',
            url: 'memberFood/getAllMember'
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
    
    $scope.foods = [];
    $scope.getAllFood = function () {
        $http({
            method: 'GET',
            url: 'memberFood/getAllFood'
        }).then(
                function (response) {
                    $scope.foods = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllFood();
    
    $scope.saveMemberFood=function(){
        
        $scope.newMemberFood.memberId= $scope.newMember.memberId;
        $scope.newMemberFood.foodId= $scope.newFood.foodId;
        
        $http({
            method: 'POST',
            url: 'memberFood/saveMemberFood',
            data: angular.toJson($scope.newMemberFood),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Member Food Saved";
                    $scope.getAllMemberFood();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickMemberFood={};
    $scope.selectMemberFood=function(memberFood){
        $scope.clickMemberFood=memberFood;
        
        $http({
            method: 'POST',
            url: 'memberFood/getMemberForEdit',
            data: angular.toJson($scope.clickMemberFood.memberId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newMember= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
//        alert("   "+ $scope.clickInstructor.employeeId+" "+ $scope.clickInstructor.categoryPackageId);

        $http({
            method: 'POST',
            url: 'memberFood/get',
            data: angular.toJson($scope.clickMemberFood.foodId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newFood= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    
    
    $scope.updateMemberFood=function(){
        
        $scope.clickMemberFood.memberId= $scope.newMember.memberId;
        $scope.clickMemberFood.foodId= $scope.newFood.foodId;
        
        $http({
            method: 'POST',
            url: 'memberFood/updateMemberFood',
            data: angular.toJson($scope.clickMemberFood),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="MemberFood Information updated";
                    $scope.getAllMemberFood();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
}
);
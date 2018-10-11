/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("MdfApp", []);

myApp.controller("MdfCtrl", function ($scope, $http) {
    
    $scope.message="";
    $scope.error_message="";
    $scope.memberDietFoods = [];
    
    $scope.getAll = function () {
        $http({
            method: 'GET',
            url: 'memberDietFood/getAll'
        }).then(
                function (response) {
                    $scope.memberDietFoods = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };


    $scope.getAll();
    
    $scope.newMemberDietFood={};
    $scope.newMember={};
    $scope.newDietFood={};
    
    $scope.members = [];
    $scope.getAllMember = function () {
        $http({
            method: 'GET',
            url: 'memberDietFood/getAllMember'
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
    
    $scope.dietFoods = [];
    $scope.getAllDietFood = function () {
        $http({
            method: 'GET',
            url: 'memberDietFood/getAllDietFood'
        }).then(
                function (response) {
                    $scope.dietFoods = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllDietFood();
    
    $scope.saveMemberDietFood=function(){
        
        $scope.newMemberDietFood.memberId= $scope.newMember.memberId;
        $scope.newMemberDietFood.dietFoodId= $scope.newDietFood.dietFoodId;
        
        $http({
            method: 'POST',
            url: 'memberDietFood/save',
            data: angular.toJson($scope.newMemberDietFood),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Diet Food Saved";
                    $scope.getAll();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickMemberDietFood={};
    $scope.selectMemberDietFood=function(memberDietFood){
        $scope.clickMemberDietFood=memberDietFood;
        
        $http({
            method: 'POST',
            url: 'memberDietFood/getMemberForEdit',
            data: angular.toJson($scope.clickMemberDietFood.memberId),
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
            url: 'memberDietFood/getDietFoodForEdit',
            data: angular.toJson($scope.clickMemberDietFood.dietFoodId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newDietFood= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    
    
    $scope.updateMemberDietFood=function(){
        
        $scope.clickMemberDietFood.memberId= $scope.newMember.memberId;
        $scope.clickMemberDietFood.dietFoodId= $scope.newDietFood.dietFoodId;
        
        $http({
            method: 'POST',
            url: 'memberDietFood/update',
            data: angular.toJson($scope.clickMemberDietFood),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="Diet Food Information updated";
                    $scope.getAll();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
}
);
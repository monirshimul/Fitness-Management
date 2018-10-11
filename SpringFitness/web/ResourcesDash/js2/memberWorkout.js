/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("memberWorkoutApp", []);

myApp.controller("memberWorkoutCtrl", function ($scope, $http) {
    
    $scope.message="";
    $scope.error_message="";
    $scope.memberWorkouts = [];
    
    $scope.getAllMemberWorkout = function () {
        $http({
            method: 'GET',
            url: 'memberWorkout/getAllMemberWorkout'
        }).then(
                function (response) {
                    $scope.memberWorkouts = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };


    $scope.getAllMemberWorkout();
    
    $scope.newMemberWorkout={};
    $scope.newMember={};
    $scope.newWorkout={};
    
    $scope.members = [];
    $scope.getAllMember = function () {
        $http({
            method: 'GET',
            url: 'memberWorkout/getAllMember'
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
    
    $scope.workouts = [];
    $scope.getAllWorkout = function () {
        $http({
            method: 'GET',
            url: 'memberWorkout/getAllWorkout'
        }).then(
                function (response) {
                    $scope.workouts = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getAllWorkout();
    
    $scope.saveMemberWorkout=function(){
        
        $scope.newMemberWorkout.memberId= $scope.newMember.memberId;
        $scope.newMemberWorkout.workoutId= $scope.newWorkout.workoutId;
        
        $http({
            method: 'POST',
            url: 'memberWorkout/saveMemberWorkout',
            data: angular.toJson($scope.newMemberWorkout),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function(response){
                    $scope.message="New Member Workout Saved";
                    $scope.getAllMemberWorkout();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
        
    };
    
    $scope.clickMemberWorkout={};
    $scope.selectMemberWorkout=function(memberWorkout){
        $scope.clickMemberWorkout=memberWorkout;
        
        $http({
            method: 'POST',
            url: 'memberWorkout/getMemberForEdit',
            data: angular.toJson($scope.clickMemberWorkout.memberId),
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
            url: 'memberWorkout/getWorkoutForEdit',
            data: angular.toJson($scope.clickMemberWorkout.workoutId),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.newWorkout= response.data;
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    
    
    $scope.updateInstructor=function(){
        
        $scope.clickMemberWorkout.memberId= $scope.newMember.memberId;
        $scope.clickMemberWorkout.workoutId= $scope.newWorkout.workoutId;
        
        $http({
            method: 'POST',
            url: 'memberWorkout/updateMemberWorkout',
            data: angular.toJson($scope.clickMemberWorkout),
            headers:{
                'Content-Type':'application/json'
            }
            
        }).then(
                function(response){
                    $scope.message="Member Workout Information updated";
                    $scope.getAllMemberWorkout();
                },
                function(reason){
                    $scope.error_message = reason.data;
                }
                );
        
    };
    
    $scope.changeWorkoutSelect=function(){
        $scope.newMemberWorkout.totalCaloriesBurn = $scope.newWorkout.calorieBurn * $scope.newMemberWorkout.quantity * $scope.newMemberWorkout.itemSet;
        $scope.clickMemberWorkout.totalCaloriesBurn = $scope.newWorkout.calorieBurn * $scope.clickMemberWorkout.quantity * $scope.clickMemberWorkout.itemSet;
    };
    
}
);
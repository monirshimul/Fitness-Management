/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var myApp = angular.module("IndexDashApp", []);

myApp.controller("IndexDashCtrl", function ($scope, $http) {
    
    $scope.getTotalAdmin = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getTotalAdmin'
        }).then(
                function (response) {
                    $scope.totalAdmin = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getTotalAdmin();
    
    
    $scope.getTotalMember = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getTotalMember'
        }).then(
                function (response) {
                    $scope.totalMember = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getTotalMember();
    
    
    $scope.getTotalEmployee = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getTotalEmployee'
        }).then(
                function (response) {
                    $scope.totalEmployee = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getTotalEmployee();
    
    
    $scope.getTotalInstructor = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getTotalInstructor'
        }).then(
                function (response) {
                    $scope.totalInstructor = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getTotalInstructor();
    
    
    $scope.getMonthlyExpenseFloorRent = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getMonthlyExpenseFloorRent'
        }).then(
                function (response) {
                    $scope.floorRent = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getMonthlyExpenseFloorRent();
    
    
    $scope.getMonthlyExpenseElectricityBil = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getMonthlyExpenseElectricityBil'
        }).then(
                function (response) {
                    $scope.electricityBill = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getMonthlyExpenseElectricityBil();
    
    
    $scope.getMonthlyExpenseWaterBill = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getMonthlyExpenseWaterBill'
        }).then(
                function (response) {
                    $scope.waterBill = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getMonthlyExpenseWaterBill();
    
    
    $scope.getSalaryStatSalary = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getSalaryStatSalary'
        }).then(
                function (response) {
                    $scope.salary = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getSalaryStatSalary();
    
    
    $scope.getSalaryStatBonus = function () {
        $http({
            method: 'GET',
            url: 'indexDash/getSalaryStatBonus'
        }).then(
                function (response) {
                    $scope.bonus = response.data;
                },
                function (reason) {

                    $scope.error_message = reason.data;
                }
        );
    };
    
    $scope.getSalaryStatBonus();
    
    
    
}
);
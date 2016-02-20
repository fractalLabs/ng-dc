'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'NubeCtrl', ($scope, $routeParams, $timeout, Clj) ->
    console.log $scope.words

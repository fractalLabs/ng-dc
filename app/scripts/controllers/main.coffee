'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'MainCtrl',  ($scope) ->
    $scope.words = [{"weight": 2, "text": "hola"}]
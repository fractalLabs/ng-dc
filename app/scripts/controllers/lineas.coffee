'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:LineasCtrl
 # @description
 # # LineasCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'LineasCtrl', ($scope) ->
    $scope.labels = ["January", "February", "March", "April", "May", "June", "July"]
    $scope.series = ['Series A', 'Series B']
    $scope.data = [
      [65, 59, 80, 81, 56, 55, 40],
      [28, 48, 40, 19, 86, 27, 90]
    ]
    $scope.onClick = (points, evt) ->
      console.log points, evt
    console.log "los datos son: ", $scope.datos
    #console.log "los datos son: ", datos
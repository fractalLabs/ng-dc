'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:WidgetCtrl
 # @description
 # # WidgetCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'WidgetCtrl', ($scope)->
    $scope.classFn = (n) ->
      "w-" + n
    $scope.container = [].slice.call(document.getElementsByClassName($scope.classFn($scope.data.id)))
    console.log "height ", $scope.height

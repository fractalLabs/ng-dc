'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'DashCtrl', ($scope, $routeParams, $timeout, Clj) ->
    $scope.widgets = []
    console.log "hola"

    $scope.expr = '(db-find :data-core {:destino "Dashboard APF"})'
    Clj.evalClojure($scope.expr)

    $scope.widgets = Clj.getReturn().jresult

    refresh = ->
      $scope.refresh = true
      $timeout (->
        $scope.refresh = false
      ), 0

    $scope.$watch(
      -> Clj.getReturn(),
      (newReturn) ->
        refresh()
        console.log('new return', newReturn)
        $scope.widgets = newReturn.jresult)

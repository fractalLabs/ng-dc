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

    $scope.expr = '(:data (first (db-find :dash)))'
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

    $scope.gridsterOpts =
      columns: 6
      swapping: true

    $scope.standardItems = [ { sizeX: 6, sizeY: 2, row: 0, col: 0, data: [{weight: 10, text: "holama"}], type: 'nube', id: 1 }, { sizeX: 2, sizeY: 2, row: 4, col: 0, data: {labels: ["si", "no"], data: [8, 2], title: "MFB"}, type: 'pie', id: 2}, { sizeX: 4, sizeY: 2, row: 7, col: 4, data: {labels: ["ene", "feb", "m1r", "abr", "may", "jun", "jul"], series: ['Serie A', 'Serie B'], data: [ [65, 59, 80, 81, 56, 55, 40], [28, 48, 40, 19, 86, 27, 90]]}, type: 'lineas', id: 3}]

'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'DaCtrl', ($scope, $routeParams, $timeout, Clj) ->
    $scope.widgets = []
    console.log "hola"

    $scope.expr = '(db-find :data-core {:destino "Dashboard DA" :value {$exists true}})'
    Clj.evalClojure($scope.expr)

    $scope.widgets = Clj.getReturn().jresult

    refresh = ->
      $scope.refresh = true
      $timeout (->
        $scope.refresh = false
      ), 0

    $scope.inIframe = ->
      try window.self != window.top
      catch e then true

    if $scope.inIframe()
      document.getElementById("header").style.visibility="hidden";
      document.getElementById("footer").style.visibility="hidden";
    $scope.$watch(
      -> Clj.getReturn(),
      (newReturn) ->
        refresh()
        console.log('new return', newReturn)
        $scope.widgets = newReturn.jresult)

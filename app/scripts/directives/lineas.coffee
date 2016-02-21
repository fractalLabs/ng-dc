'use strict'

###*
 # @ngdoc directive
 # @name ngDcApp.directive:lineas
 # @description
 # # lineas
###
angular.module 'ngDcApp'
  .directive 'lineas', ->
    restrict: 'EA'
    controller: 'LineasCtrl'
    scope:
      datos: '='
    template: '<canvas id="line" class="chart chart-line" chart-data="data"
  chart-labels="labels" chart-legend="true" chart-series="series"
  chart-click="onClick">
               </canvas>'
    link: ($scope, element, attrs) ->
      console.log 'test', $scope.datos
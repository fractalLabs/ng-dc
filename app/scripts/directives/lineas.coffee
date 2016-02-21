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
      data: '='
    template: '<canvas id="line" class="chart chart-line" chart-data="data.data"
  chart-labels="data.labels" chart-legend="true" chart-series="data.series"
  chart-click="onClick">
               </canvas>'
    #link: ($scope, element, attrs) ->
    #  console.log 'test', $scope.datos

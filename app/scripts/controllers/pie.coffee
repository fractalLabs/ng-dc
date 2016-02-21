'use strict'

angular.module 'ngDcApp'
  .controller 'PieCtrl', ($scope) ->
    $scope.options =
      chart:
        type: 'pieChart'
        #height: 250
        x: (d) ->
          d.key
        y: (d) ->
          d.y
        showLegend: false
        donut: true
      labelThreshold: 0.01
      labelSunbeamLayout: true

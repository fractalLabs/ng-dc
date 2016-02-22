'use strict'

angular.module 'ngDcApp'
  .controller 'PieCtrl', ($scope) ->
    $scope.options =
      chart:
        type: 'pieChart'
        width: 200
        height: 200
        margin:
          top: 0
          right: 0
          bottom: 0
          left: 0
        x: (d) ->
          d.key
        y: (d) ->
          d.y
        showLegend: false
        donut: true
      labelThreshold: 0.01
      labelSunbeamLayout: true

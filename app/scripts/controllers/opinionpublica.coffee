'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'OpinionpublicaCtrl', ($scope, $routeParams, $timeout, Clj) ->
    $scope.widgets = []

    $scope.expr = '(db-find :data-core {:destino "Dashboard APF" :value {$exists true}})'
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

    $scope.words = [{"weight": 2, "text": "hola"}]
    $scope.options =
      chart:
        type: 'pieChart'
        height: 250
        x: (d) ->
          d.key
        y: (d) ->
          d.y
        showLegend: false
        donut: true
      labelThreshold: 0.01
      labelSunbeamLayout: true

    $scope.data = [
      {
        key: 'One'
        y: 5
      }
      {
        key: 'Two'
        y: 2
      }]

    #currently not working
    $scope.areachart = 'chart':
      'type': 'stackedAreaChart'
      'height': 450
      'margin':
        'top': 20
        'right': 20
        'bottom': 30
        'left': 40
      'useVoronoi': false
      'clipEdge': true
      'duration': 100
      'useInteractiveGuideline': true
      'xAxis': 'showMaxMin': false
      'yAxis': {}
      'zoom':
        'enabled': true
        'scaleExtent': [
          1
          10
        ]
        'useFixedDomain': false
        'useNiceScale': false
        'horizontalOff': false
        'verticalOff': true
        'unzoomEventType': 'dblclick.zoom'

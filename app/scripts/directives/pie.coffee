'use strict'

angular.module 'ngDcApp'
  .directive 'pie', ->
    controller: 'PieCtrl'
    templateUrl: 'views/pie.html'
    scope:
      data: '='
    #link: (scope, element, attrs) ->
    #  element.text 'this is the pie directive'

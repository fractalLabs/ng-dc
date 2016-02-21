'use strict'

angular.module 'ngDcApp'
  .directive 'pie', ->
    controller: 'PieCtrl'
    template: '<nvd3 options="options" data="data"></nvd3>'
    scope:
      data: '='
    #link: (scope, element, attrs) ->
    #  element.text 'this is the pie directive'

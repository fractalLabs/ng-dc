'use strict'

###*
 # @ngdoc directive
 # @name ngDcApp.directive:widget
 # @description
 # # widget
###
angular.module 'ngDcApp'
  .directive 'widget', ->
    templateUrl: 'views/widget.html'
    scope:
      data: '='
    link: (scope, element, attrs) ->
      #console.log 'this is the widget directive', scope
      #console.log scope.data

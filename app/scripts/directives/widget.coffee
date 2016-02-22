'use strict'

###*
 # @ngdoc directive
 # @name ngDcApp.directive:widget
 # @description
 # # widget
###
angular.module 'ngDcApp'
  .directive 'widget', ->
    controller: 'WidgetCtrl'
    templateUrl: 'views/widget.html'
    scope:
      data: '='
    link: ($scope, elm, attrs) ->
      #console.log "elm: ", elm
      #console.log "elmm: ", elm[0]
      console.log "linking height:", $scope.height = elm[0].parentElement.style.height
      $scope.height = elm[0].parentElement.style.height
      #console.log 'this is the widget directive', scope
      #console.log scope.data

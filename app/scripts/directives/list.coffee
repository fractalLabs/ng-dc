'use strict'

###*
 # @ngdoc directive
 # @name ngDcApp.directive:list
 # @description
 # # list
###
angular.module 'ngDcApp'
  .directive 'list', ->
    controller: 'ListCtrl'
    scope:
      data: '='
    templateUrl: 'views/list.html'

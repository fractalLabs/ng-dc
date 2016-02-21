'use strict'

###*
 # @ngdoc directive
 # @name ngDcApp.directive:nube
 # @description
 # # nube
###
angular.module 'ngDcApp'
  .directive 'nube', ->
    template: '<jqcloud words="words" width="1200" height="400" steps="7"></jqcloud>'
    controller: 'NubeCtrl'
    scope:
      words: '='

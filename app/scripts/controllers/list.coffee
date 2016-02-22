'use strict'

###*
 # @ngdoc function
 # @name ngDcApp.controller:ListCtrl
 # @description
 # # ListCtrl
 # Controller of the ngDcApp
###
angular.module 'ngDcApp'
  .controller 'ListCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return

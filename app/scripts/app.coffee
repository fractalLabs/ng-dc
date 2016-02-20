'use strict'

###*
 # @ngdoc overview
 # @name ngDcApp
 # @description
 # # ngDcApp
 #
 # Main module of the application.
###
angular
  .module 'ngDcApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'angular-loading-bar',
    'angular-jqcloud'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/da',
        templateUrl: 'views/dashboard.html'
        controller: 'DaCtrl'
      .when '/dgm',
        templateUrl: 'views/dashboard.html'
        controller: 'DgmCtrl'
      .when '/apf',
        templateUrl: 'views/apf.html'
        controller: 'ApfCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .otherwise
        redirectTo: '/'
  .directive 'nube', () ->
    template: '<jqcloud words="words" width="500" height="350" steps="7"></jqcloud>'
    controller: 'NubeCtrl'
    #scope: words: '@'
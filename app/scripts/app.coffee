'use strict'

###*
 # @ngdoc overview
 # @name coffeeSiteApp
 # @description
 # # coffeeSiteApp
 #
 # Main module of the application.
###
angular
  .module 'coffeeSiteApp', [
    'ngAnimate'
    'ngAria'
    'ngCookies'
    'ngMessages'
    'ngResource'
    'ngRoute'
    'ngSanitize'
    'ngTouch'
    'ui.bootstrap'
    'flock.bootstrap.material'
    'ui.unique'
    'socialLinks'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .when '/projects',
        templateUrl: 'views/projects.html'
        controller: 'ProjectsCtrl'
        controllerAs: 'projects'
        resolve: tableData: ($http) ->
          $http.get('api/projects').then (response) ->
            response.data
      .when '/blog',
        templateUrl: 'views/blog.html'
        controller: 'BlogCtrl'
        controllerAs: 'blog'
        resolve: tableData: ($http) ->
          $http.get('api/posts').then (response) ->
            response.data
      .when '/contact',
        templateUrl: 'views/contact.html'
        controller: 'ContactCtrl'
        controllerAs: 'contact'
      .when '/admin',
        templateUrl: 'views/admin.html'
        controller: 'AdminCtrl'
        controllerAs: 'admin'
      .otherwise
        redirectTo: '/'


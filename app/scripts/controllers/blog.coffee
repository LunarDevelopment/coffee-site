'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:BlogCtrl
 # @description
 # # BlogCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
  .controller 'BlogCtrl', (tableData) ->
    @posts = tableData;
    return

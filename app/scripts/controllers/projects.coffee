'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:ProjectsCtrl
 # @description
 # # ProjectsCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
.controller 'ProjectsCtrl', (tableData) ->
    @projects = tableData.projects
    @searchPage = (term) ->
      @searchKeyword = term
    @getStatusClass = (term) ->
      switch term
        when 'Completed' then 'btn-material-green'
        when 'Planned' then 'btn-material-purple'
        when 'Cancelled' then 'btn-material-red'
        when 'Ongoing' then 'btn-material-brown'
        else 'btn-material-blue'
    @formData = (obj) ->
      obj.split ', '
    return

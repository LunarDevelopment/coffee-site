'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
  .controller 'MainCtrl', ($scope, $modal, $log) ->
    @submitted = false
    classes = [
      'blue-grey'
      'grey'
      'brown'
      'deep-orange'
      'orange'
      'amber'
      'yellow'
      'lime'
      'light-green'
      'green'
      'teal'
      'cyan'
      'light-blue'
      'blue'
      'indigo'
      'deep-purple'
      'purple'
      'pink'
      'red'
    ]
    @generateClass = ->
      @random = Math.floor(Math.random() * classes.length)
      'panel-material-' + classes[@random]
    @open = ->
      modalInstance = $modal.open(
        animation: true
        templateUrl: 'views/modal.html'
        controller: 'ModalCtrl'
        controllerAs: 'modal'
        size: '')
      modalInstance.result.then ((selectedItem) ->
        @selected = selectedItem
        return
      ), ->
        $log.info 'Modal dismissed at: ' + new Date
        return
      return
    return

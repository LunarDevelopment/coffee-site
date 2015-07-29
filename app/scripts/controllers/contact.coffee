'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:ContactCtrl
 # @description
 # # ContactCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
  .controller 'ContactCtrl', ($log, $modal) ->
    @contact = ''
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

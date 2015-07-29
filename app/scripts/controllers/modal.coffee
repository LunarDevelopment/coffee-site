'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:ModalCtrl
 # @description
 # # ModalCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
  .controller 'ModalCtrl', ($http, $modalInstance) ->
    @ok = -> 
      $modalInstance.close @selected.item
    @cancel = -> 
      $modalInstance.dismiss 'cancel'
    @result = 'hidden'
    @submitButtonDisabled = false 
    @submitted = false 
    @submit = (contactform) ->
      @submitted = true
      @submitButtonDisabled = true
      if contactform.$valid
        $http(
          method: 'POST'
          url: 'api/contact-form.php'
          data: @formData
          headers: 'Content-Type': 'application/x-www-form-urlencoded').success (data) ->
          console.log data
          if data.success
            #success comes from the return json object
            @submitButtonDisabled = true
            @resultMessage = data.message
            @result = 'bg-success'
          else
            @submitButtonDisabled = false
            @resultMessage = data.message
            @result = 'bg-danger'
          return
      else 
        @submitButtonDisabled = false
        @resultMessage = 'Failed, Please fill in all the fields!'
        @result = 'bg-danger'
      return
    return

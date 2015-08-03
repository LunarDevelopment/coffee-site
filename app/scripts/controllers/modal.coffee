'use strict'

###*
 # @ngdoc function
 # @name coffeeSiteApp.controller:ModalCtrl
 # @description
 # # ModalCtrl
 # Controller of the coffeeSiteApp
###
angular.module 'coffeeSiteApp'
  .controller 'ModalCtrl', ($http, $modalInstance, $httpParamSerializerJQLike) ->
    vm = @
    vm.ok = -> 
      $modalInstance.close vm.selected.item
    vm.cancel = -> 
      $modalInstance.dismiss 'cancel'
    vm.result = 'hidden'
    vm.submitButtonDisabled = false 
    vm.submitted = false 
    vm.submit = (contactform) ->
      if contactform.$valid
        vm.submitButtonDisabled = true
        $http(
          method: 'POST'
          url: 'api/contact/contact-form.php'
          data: $httpParamSerializerJQLike(vm.formData)
          headers: 'Content-Type': 'application/x-www-form-urlencoded').success (data) ->
          console.log data
          if data.success
            #@submitted = true
            #success comes from the return json object
            vm.submitButtonDisabled = true
            vm.resultMessage = data.message
            vm.result = 'bg-success'
          else
            vm.submitButtonDisabled = false
            vm.resultMessage = data.message
            vm.result = 'bg-danger'
          return
        vm.submitButtonDisabled = false
      else 
        vm.submitButtonDisabled = false
        vm.resultMessage = 'Failed, Please fill in all the fields!'
        vm.result = 'bg-danger'
      return
    return

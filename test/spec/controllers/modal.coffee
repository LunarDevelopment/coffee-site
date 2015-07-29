'use strict'

describe 'Controller: ModalCtrl', ->

  # load the controller's module
  beforeEach module 'coffeeSiteApp'

  ModalCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ModalCtrl = $controller 'ModalCtrl', {
      # place here mocked dependencies
    }

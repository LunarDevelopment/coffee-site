'use strict'

describe 'Controller: ContactCtrl', ->

  # load the controller's module
  beforeEach module 'coffeeSiteApp'

  ContactCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ContactCtrl = $controller 'ContactCtrl', {
      # place here mocked dependencies
    }

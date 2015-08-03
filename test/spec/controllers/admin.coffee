'use strict'

describe 'Controller: AdminCtrl', ->

  # load the controller's module
  beforeEach module 'coffeeSiteApp'

  AdminCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AdminCtrl = $controller 'AdminCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(AdminCtrl.awesomeThings.length).toBe 3

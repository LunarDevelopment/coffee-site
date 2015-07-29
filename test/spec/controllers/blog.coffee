'use strict'

describe 'Controller: BlogCtrl', ->

  # load the controller's module
  beforeEach module 'coffeeSiteApp'

  BlogCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BlogCtrl = $controller 'BlogCtrl', {
      # place here mocked dependencies
    }

'use strict'

describe 'Controller: ProjectsCtrl', ->

  # load the controller's module
  beforeEach module 'coffeeSiteApp'

  ProjectsCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProjectsCtrl = $controller 'ProjectsCtrl', {
      # place here mocked dependencies
    }

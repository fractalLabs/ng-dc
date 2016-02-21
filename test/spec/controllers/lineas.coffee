'use strict'

describe 'Controller: LineasCtrl', ->

  # load the controller's module
  beforeEach module 'ngDcApp'

  LineasCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    LineasCtrl = $controller 'LineasCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(LineasCtrl.awesomeThings.length).toBe 3

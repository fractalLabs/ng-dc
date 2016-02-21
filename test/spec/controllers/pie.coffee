'use strict'

describe 'Controller: PieCtrl', ->

  # load the controller's module
  beforeEach module 'ngDcApp'

  PieCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PieCtrl = $controller 'PieCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(PieCtrl.awesomeThings.length).toBe 3

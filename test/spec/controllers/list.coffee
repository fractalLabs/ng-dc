'use strict'

describe 'Controller: ListCtrl', ->

  # load the controller's module
  beforeEach module 'ngDcApp'

  ListCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ListCtrl = $controller 'ListCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ListCtrl.awesomeThings.length).toBe 3

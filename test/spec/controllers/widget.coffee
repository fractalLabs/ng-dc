'use strict'

describe 'Controller: WidgetCtrl', ->

  # load the controller's module
  beforeEach module 'ngDcApp'

  WidgetCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WidgetCtrl = $controller 'WidgetCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(WidgetCtrl.awesomeThings.length).toBe 3

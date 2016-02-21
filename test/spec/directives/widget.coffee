'use strict'

describe 'Directive: widget', ->

  # load the directive's module
  beforeEach module 'ngDcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<widget></widget>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the widget directive'

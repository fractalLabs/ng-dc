'use strict'

describe 'Directive: lineas', ->

  # load the directive's module
  beforeEach module 'ngDcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<lineas></lineas>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the lineas directive'

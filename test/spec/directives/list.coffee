'use strict'

describe 'Directive: list', ->

  # load the directive's module
  beforeEach module 'ngDcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<list></list>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the list directive'

'use strict'

describe 'Directive: nube', ->

  # load the directive's module
  beforeEach module 'ngDcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<nube></nube>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the nube directive'

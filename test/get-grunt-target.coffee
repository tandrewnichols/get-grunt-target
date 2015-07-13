expect = require('indeed').expect

describe 'get-grunt-target', ->
  Given -> @getTarget = require '../lib/get-grunt-target'

  context 'not found', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar']
    When -> @target = @getTarget @grunt, 'blah'
    Then -> expect(@target).to.be.null()

  context 'found', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar']
    When -> @target = @getTarget @grunt, 'foo'
    Then -> expect(@target).to.equal 'bar'

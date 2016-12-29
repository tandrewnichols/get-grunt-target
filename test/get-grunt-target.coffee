describe 'get-grunt-target', ->
  Given -> @getTarget = require '../lib/get-grunt-target'

  context 'not found', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar']
    When -> @target = @getTarget @grunt, 'blah'
    Then -> (@target is null).should.be.true()

  context 'found', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar']
    When -> @target = @getTarget @grunt, 'foo'
    Then -> @target.should.equal 'bar'

  context 'multiple targets found', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar', 'foo:baz']
    When -> @targets = @getTarget @grunt, 'foo'
    Then -> @targets.should.eql ['bar', 'baz']

  context 'multiple targets with index', ->
    Given -> @grunt =
      cli:
        tasks: ['foo:bar', 'foo:baz']
    When -> @targets = @getTarget @grunt, 'foo'
    Then -> @targets.should.eql ['bar', 'baz']

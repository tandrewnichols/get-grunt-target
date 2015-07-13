[![Build Status](https://travis-ci.org/tandrewnichols/get-grunt-target.png)](https://travis-ci.org/tandrewnichols/get-grunt-target) [![downloads](http://img.shields.io/npm/dm/get-grunt-target.svg)](https://npmjs.org/package/get-grunt-target) [![npm](http://img.shields.io/npm/v/get-grunt-target.svg)](https://npmjs.org/package/get-grunt-target) [![Code Climate](https://codeclimate.com/github/tandrewnichols/get-grunt-target/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/get-grunt-target) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/get-grunt-target/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/get-grunt-target) [![dependencies](https://david-dm.org/tandrewnichols/get-grunt-target.png)](https://david-dm.org/tandrewnichols/get-grunt-target)

# get-grunt-target

Lookup the target for a grunt task

## Installation

`npm install --save get-grunt-target`

## Summary

Pass in grunt and the task you're intested in to get back the currently invoked target (if any).

## Usage

You can use this library in a Gruntfile (or alternatively, in a task itself) to do dynamic stuff based on the task. If the task you pass in was not invoked in the current build chain, this function returns null. If the task you pass in was invoked once, it returns the string name of the target it was invoked with (which _could_ be undefined if you invoke a multitask without a target name). If the task you pass in was invoked more than once, it returns an array of string targets.

```js
var getTarget = require('get-grunt-target');

module.exports = function(grunt) {
  var target = getTarget(grunt, 'test');
};
```

When `grunt test:server` is run, `target` will equal `"server"`.

When `grunt test:server test:client` is run, `target` will equal `["server", "client"]`.

## Contributing

I'll be happy to merge any pull request that adds value and has passing tests. Be sure to add a test both for node and for the browser. Tests are run with `grunt`.

checkPlugin = require '../'
expect = require('chai').expect
require 'mocha'

describe 'gulp-check', ->

  it 'should find instances with a string', (done) ->
    expect(true).to.equal false
    done()
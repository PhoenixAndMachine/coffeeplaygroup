Array = require '../arrayIO'
chai = require 'chai'
chai.should()

describe 'Create an arrayIO', () ->
  it 'create a array', (done) ->
    arr = new Array
    arr.storage.should.eql []
    done()

  it 'read data from an empty array', (done) ->
    done()




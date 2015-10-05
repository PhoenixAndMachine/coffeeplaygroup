Array = require '../arrayIO'
chai = require 'chai'
chai.should()

describe 'Create an arrayIO', () ->
  it 'create a array', (done) ->
    arr = new Array
    arr.storage.should.eql []
    done()

  it 'read data from an empty array', (done) ->
    arr = new Array
    arr.read(0,0)
    arr.storage.should.eql []
    done()

  it 'read data from a dirty array', (done) ->
    arr = new Array
    arr.write([1,2,3])
    newArr = arr.read(0,2)
    newArr.should.eql [1,2,3]
    done()

  it 'read data from a dirty array', (done) ->
    arr = new Array
    arr.write([1,2,3])
    newArr = arr.read(1,2)
    newArr.should.eql [2,3]
    done()

  it 'write data ', (done) ->
    arr = new Array
    arr.write([1,2,3])
    arr.storage.should.eql [1,2,3]
    done()



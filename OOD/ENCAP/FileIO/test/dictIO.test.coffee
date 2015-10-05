fileIO = require '../fileIO'
chai = require 'chai'
_ = require 'underscore'
chai.should()

describe 'Create an fileIO', () ->
  it 'create a fileIO', (done) ->
    file = new fileIO('diary')
    file.storage.should.eql 'hello worldwhat a beautiful dayhello worldwhat a beautiful day'
    done()

  it 'read data from file storage',(done) ->
    file = new fileIO('diary')
    file.storage.should.eql 'hello worldwhat a beautiful dayhello worldwhat a beautiful day'
    newString = file.read(0,4)
    newString.should.eql 'hello'
    done()

  it 'write data to file',(done)->
    file = new fileIO('diary')
    oldFile = _.clone(file)
    newString = ';hello trantect'
    file.write newString
    file.storage.should.eql oldFile.storage+newString
    done()
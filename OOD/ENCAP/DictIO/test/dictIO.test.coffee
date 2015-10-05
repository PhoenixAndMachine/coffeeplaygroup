DictIO = require '../dictIO'
chai = require 'chai'
chai.should()

describe 'Create an DictIO', () ->
  it 'create a dict', (done) ->
    dict = new DictIO
    dict.storage.should.eql {}
    done()

  it 'read data from a empty object',(done) ->
    dict = new DictIO
    emptyDict = dict.read()
    emptyDict.should.eql {}
    done()

  it 'read data from dirty object with one arg',(done) ->
    dict = new DictIO
    dict.write({name:'jake',age:'12',country:'china'})
    newDict = dict.read('name')
    newDict.should.eql {name:'jake'}
    done()

  it 'read data from dirty object with args',(done) ->
    dict = new DictIO
    dict.write({name:'jake',age:'12',country:'china'})
    newDict = dict.read('name','age')
    newDict.should.eql {name:'jake',age:'12'}
    done()

  it 'write data',(done) ->
    dict = new DictIO
    dict.write({name:'jake',age:'12',country:'china'})
    dict.storage.should.eql {name:'jake',age:'12',country:'china'}
    done()
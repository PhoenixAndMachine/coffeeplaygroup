Client = require '../httpIO'
chai = require 'chai'
chai.should()

describe 'Create a client', () ->
  it 'create a client', (done) ->
    local = new Client 'Gucci'
    local.connected.should.be.false
    done()


###

local.get (err, data) ->
  console.log err
  console.log data

###

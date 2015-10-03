###
  Abstract arrayIO and fileIO
###

fs = require 'fs'
_ = require 'underscore'

class TrivialIO
  constructor: (@storage) ->
    @mem = _.clone @storage

  read: (from, to) ->
    @storage[from..to]

  write: (data) ->
    @storage += data

  buffer: () ->
    @storage

  clean: () ->
    @storage = @mem



class ArrayIO extends TrivialIO
  constructor: () ->
    super ""

class FileIO extends TrivialIO
  constructor: (@_filename) ->
    super (fs.readFileSync @_filename).toString()

  write: (data) ->
    super data
    fs.writeFileSync @_filename, @storage
  
  clean: () ->
    super
    @write ""

module.exports =
  FileIO: FileIO
  ArrayIO: ArrayIO
  TrivialIO: TrivialIO 

fs = require 'fs'
_ = require 'underscore'

class FileIO
  constructor: (@_filename) ->
    @storage = (fs.readFileSync @_filename).toString()

  read: (from, to) ->
    @storage[from..to]

  write: (data) ->
    @storage += data
    fs.writeFileSync @_filename, @storage

module.exports = FileIO

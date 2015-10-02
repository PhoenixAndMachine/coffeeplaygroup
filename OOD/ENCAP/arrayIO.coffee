_ = require 'underscore'

class ArrayIO
  constructor: () ->
    @storage = []

  read: (from, to) ->
    @storage[from..to]

  write: (data) ->
    _.each data, (value) =>
      @storage.push value

module.exports = ArrayIO

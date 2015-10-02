_ = require 'underscore'

class IO
  constructor: (@obj) ->
    @obj.storage = []

  read: (from, to) ->
    @obj.storage[from..to]

  write: (data) ->
    _.each data, (value) =>
      @obj.storage.push value

module.exports = IO

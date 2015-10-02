_ = require 'underscore'

class DictIO
  constructor: () ->
    @storage = {}

  read: (key) ->
    @storage[key]

  write: (data) ->
    _.extendOwn @storage, data

module.exports = DictIO

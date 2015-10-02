_ = require 'underscore'

class DictIO
  constructor: () ->
    @storage = {}

  read: () ->
    _.pick @storage, arguments

  write: (data) ->
    _.extendOwn @storage, data

module.exports = DictIO

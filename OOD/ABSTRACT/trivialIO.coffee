###
  Abstract arrayIO and dictIO
###

_ = require 'underscore'

class TrivialIO
  constructor: (@storage) ->
    @mem = _.clone @storage

  read: () ->

  write: (data) ->

  buffer: () ->
    @storage

  clean: () ->
    @storage = @mem

class DictIO extends TrivialIO
  constructor: () ->
    super {}

  read: () ->
    _.pick @storage, arguments

  write: (data) ->
    _.extendOwn @storage, data


class ArrayIO extends TrivialIO
  constructor: () ->
    super []

  read: (from, to) ->
    @storage[from..to]

  write: (data) ->
    _.each data, (_v) =>
     @storage.push _v

module.exports =
  DictIO: DictIO
  ArrayIO: ArrayIO

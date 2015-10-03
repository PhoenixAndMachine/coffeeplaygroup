class HttpClient
  http = require 'http'
  count = 0
  constructor: (@name) ->
    @connected = false

  connect: (@url) ->
    if not @connected
      count++
      @connected = true

  get: () ->
    http.get @url, arguments.toArray

  post: () ->
    http.post @url, arguments.toArray

  @num: () ->
    count

  disconnect: () ->
    @url = ""
    if @connected
      @connected = false
      count--

module.exports = HttpClient

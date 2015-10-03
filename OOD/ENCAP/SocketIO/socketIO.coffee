io = (require 'socket.io')()
io.on 'connection', (socket) ->
  console.log "client #{socket.id} is connecting ..."
  socket.emit 'connected', sid:socket.id
io.listen 3000





client = (require 'socket.io-client')('http://127.0.0.1:3000')
client.on 'connected', (msg) ->
  console.log "client #{msg.sid} is connected."

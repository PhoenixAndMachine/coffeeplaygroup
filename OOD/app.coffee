IO = require './encapsulation'

arrayIO = new IO {}

arrayIO.write "hello world"

content = arrayIO.read 3, 10
console.log content

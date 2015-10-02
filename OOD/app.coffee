Array = require './ENCAP/arrayIO'

a = new Array

a.write "hello world"

content = a.read 3, 10
console.log content

b = new Array

b.write "what a beautiful day"

content = b.read 3, 10
console.log content


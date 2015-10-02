Trivial = require './trivialIO'
Dict = Trivial.DictIO
Array = Trivial.ArrayIO

a = new Array

a.write "hello world"

content = a.read 3, 5
console.log content

a.clean()
console.log a.buffer()

b = new Array

b.write "what a beautiful day"
console.log b.buffer()

content = b.read 3, 10
console.log content



a = new Dict
a.write {age: 20}
a.write {name: 'Judy', gender: 'female'}
console.log a.buffer()

content = a.read 'gender'
console.log content

b = new Dict
b.write {color: 'red'}
b.write {size: 'XS', type: 'dress'}

content = b.read 'color'
console.log content

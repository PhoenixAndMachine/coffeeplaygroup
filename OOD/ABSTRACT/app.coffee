File = (require './trivialIO').FileIO

a = new File 'diary'

a.write "what a great day"

a.clean()

console.log a.read 3, 6


b = new File 'diary'

b.write "this is right"

console.log b.buffer()

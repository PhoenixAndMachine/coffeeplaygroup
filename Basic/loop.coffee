_ = require 'underscore'
###
	Trival list comprehension
###
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

start   = numbers[0..2]
console.log "start is #{start}"

middle  = numbers[3...-2]
console.log "middle is #{middle}"

end     = numbers[-2..]
console.log "end is #{end}"

copy    = numbers[..]
console.log "copy is #{copy}"


###
	Keyword : in
###
countdown = (num for num in [10..1])

countdownBy3 = (num for num in [10..1] by 3)

eat = (dishName, index) ->  
	index = if index? then index + "th" else ""
	console.log "I am having #{index} dish called #{dishName}."

courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']

console.log "=================================="
eat dish for dish in courses

console.log "=================================="
eat dish, i + 1 for dish, i in courses

console.log "=================================="
eat dish for dish in courses when dish isnt 'roast'



###
	Keyword: of
###

console.log "=========Array is an Object=========="
eat dish, i + 1 for i, dish of courses
console.log "=======keys in courses============"
console.log Object.keys courses




yearsOld = max: 10, ida: 9, tim: 11

ages = for child, age of yearsOld
  "#{child} is #{age}"

console.log ages

years = (item for item of yearsOld)

console.log years


###
	Suggestions: 
		Use 'in' when accounting Array
		Use 'of' when accounting Object
###
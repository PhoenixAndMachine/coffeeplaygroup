_ = require 'underscore'

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
copy1 = numbers[..]
copy2 = numbers

console.log "copy1 is equal to numbers ?", _.isEqual copy1, numbers
console.log "copy2 is equal to numbers ?", _.isEqual copy2, numbers

console.log "copy1 is the same with numbers ?", copy1 is numbers
console.log "copy2 is the same with numbers ?", copy2 is numbers

console.log "copy1 is equal to copy2 ? ", _.isEqual copy1, copy2
console.log "copy1 is the same with copy2 ? ", copy1 is copy2



copy2[3] = 444
console.log "copy2 is ", copy2
console.log "numbers is ", numbers
console.log "copy1 is ", copy1

###
	translation between CoffeeScript and Javascript 
###



copy2 is numbers
copy2 == numbers
copy1 isnt copy2

greeting = "ciao"
country = "Italy"

greeting and country
greeting or country


index?

ok = true
not ok

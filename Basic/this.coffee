console.log @ is this

###
	Difference between -> and =>
###

Employee = (name, age) ->
	
	@name = name
	@age = age


	getName = ->
		@name


	getAge = =>
		@age
	
	employeeInfo = 'getName': getName, 'getAge': getAge

console.log "Difference between -> and =>"
e = new Employee("phoenix", 28)
console.log e.getName()
console.log e.getAge()

module.exports = @

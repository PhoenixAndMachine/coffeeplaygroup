###
	Invoke a function
###


Employee = (name, age) ->
	@name = name
	@age = age

	getName = => 
		@name

	getAge = =>
		@age

	employeeInfo = 'getName': getName, 'getAge': getAge


e1 = Employee("Phoenix", 26)
console.log "========  Call Function Directly  ========"
console.log e1.name
console.log e1.age
console.log e1.getAge()
console.log e1.getName()


e2 = new Employee("Grey", 27)
console.log "========  Call With new   ========"
console.log e2.name
console.log e2.age
console.log e2.getAge()
console.log e2.getName()


e3 = {}
console.log "======== Function.prototype.apply ==========="
Employee.apply e3, ["Lv", 23]
console.log e3.name
console.log e3.age
console.log "======== Function.prototype.call ==========="
Employee.call e3, "Stella", 18
console.log e3.name
console.log e3.age

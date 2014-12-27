'use strict'

###
	1. Scope in coffeescript solve global variable problem in javascript
	2. But it generates problems as well

	Warning:
		Try to avoid the same variable name
	
	IN ALL, YOU MUST UNDERSTAND IT AND MASTER IT
###


name = "Tresa"

getName = ->
  name

wohnen = ->
  console.log "#{name} wohne im Deutschland !"

live = (name) ->
  console.log "#{name} lives in USA !"

vivir = ->
  name = "Rafalla"
  country = "Italia"
  console.log "#{name} vive en #{country} !"


closure1 = (->
  name = "Funny"
  country = "Funny Land"
  ->
    console.log "#{name} lives in #{country} !"
)()



closure2 = (->
  ->
    name = "Shorty"
    country = "Hobbit land"
    console.log "#{name} lives in #{country} !"
)()


console.log getName()

closure1()

closure2()

live()

wohnen()

live("Chai")

country = "Trantect"

vivir()

wohnen()

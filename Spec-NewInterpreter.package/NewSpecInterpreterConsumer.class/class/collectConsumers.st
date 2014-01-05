private
collectConsumers
	^ (self allSubclasses 
		sorted: [ :a :b | a priority < b priority ])
		asArray
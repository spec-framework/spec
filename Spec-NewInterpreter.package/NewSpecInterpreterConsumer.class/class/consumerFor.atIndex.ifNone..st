accessing
consumerFor: anObject atIndex: index ifNone: noneBlock
	| consumerClass |
	
	consumerClass := self consumers
		detect: [ :each | each canInterpret: anObject atIndex: index ] 
		ifNone: [ nil ].

	^ consumerClass
		ifNotNil: [ consumerClass for: anObject ]
		ifNil: noneBlock
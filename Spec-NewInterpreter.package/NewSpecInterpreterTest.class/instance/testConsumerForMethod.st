tests
testConsumerForMethod
	| consumer |

	consumer := NewSpecInterpreterConsumer 
		consumerFor: #model
		atIndex: 2
		ifNone: [ nil ].
	
	self assert: consumer class equals: NewSpecMethodConsumer.
	
	consumer := NewSpecInterpreterConsumer 
		consumerFor: #model
		atIndex: 1
		ifNone: [ nil ].
	
	self deny: consumer class = NewSpecMethodConsumer.
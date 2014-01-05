tests
testConsumerForModel
	| consumer |

	consumer := NewSpecInterpreterConsumer 
		consumerFor: #model
		atIndex: 1
		ifNone: [ nil ].
	
	self assert: consumer class equals: NewSpecModelDefinitionConsumer.
	
	consumer := NewSpecInterpreterConsumer 
		consumerFor: #model
		atIndex: 2
		ifNone: [ nil ].
	
	self deny: consumer class = NewSpecDefinitionConsumer.
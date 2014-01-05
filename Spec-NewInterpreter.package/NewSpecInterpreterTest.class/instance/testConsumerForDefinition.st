tests
testConsumerForDefinition
	| consumer |

	consumer := NewSpecInterpreterConsumer 
		consumerFor: #LabelSpec
		atIndex: 1
		ifNone: [ nil ].
	
	self assert: consumer class equals: NewSpecDefinitionConsumer.

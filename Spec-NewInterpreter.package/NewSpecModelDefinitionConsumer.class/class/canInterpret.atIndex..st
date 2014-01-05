testing
canInterpret: anObject atIndex: index
	
	^ index == 1
		and: [ anObject == #model ]
			

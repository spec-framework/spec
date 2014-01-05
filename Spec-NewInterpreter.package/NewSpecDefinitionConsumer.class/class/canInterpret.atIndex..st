testing
canInterpret: anObject atIndex: index
	
	^ index == 1
		and: [ 
			(anObject isSymbol and: [ anObject first isUppercase  ])
				or: [
					(SpecBinder canBeResolved: anObject)
						or: [ NewSpecInterpreter bindingHolder willBeResolvedAsClass: anObject ] ] ]
			

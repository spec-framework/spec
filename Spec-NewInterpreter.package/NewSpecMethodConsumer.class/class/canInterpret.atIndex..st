testing
canInterpret: anObject atIndex: index

	^ index ~= 1
		and: [ 
			anObject isSymbol 
				and: [  anObject first isLowercase ] ]
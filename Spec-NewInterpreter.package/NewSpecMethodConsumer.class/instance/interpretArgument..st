interpret
interpretArgument: anObject

	^ NewSpecInterpreter new
		bindingHolder: self bindingHolder; 
		interpret: { anObject } withModel: self model
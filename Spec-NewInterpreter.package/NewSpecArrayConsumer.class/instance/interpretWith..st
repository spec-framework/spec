interpret
interpretWith: remainingElements
	
	NewSpecInterpreter new
		bindingHolder: self bindingHolder;
		interpret: self element withModel: self model.
		
	self spec: self model spec.
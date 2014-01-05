interpret
interpretWith: stream
	"Here an abstract spec is used to wrap the literal object to be sure to return a polymorphic result"
	
	self spec: (AbstractSpec new 
		bindings: self bindingHolder;
		model: self model;
		instance: self element;
		yourself)
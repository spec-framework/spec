private
newRawSpec
	| translatedSymbol |
	
	translatedSymbol := self bindingHolder retrieveClassSymbolFor: self element.
	^ AbstractSpec new 
		bindings: self bindingHolder;
		instance: (Smalltalk classNamed: translatedSymbol) new;
		yourself
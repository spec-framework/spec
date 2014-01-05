interpret
interpretWith: stream 
	| selectorOrArray |

	selectorOrArray := self resolveElement.
	"self haltIf: selectorOrArray = #on:text:accept:readSelection:menu:."
	"If is symbol is a direct selector, otherwise is 'composed' (has been resolved as a method with 
	 arguments in #resolveElements) "
	selectorOrArray isSymbol 
		ifTrue: [ 
			self 
				interpretSelector: selectorOrArray 
				withStream: stream ]
		ifFalse: [ 
			"WARNING, I am assuming that 'composed selectors' are not receiving extra parameters"
			self 
				interpretSelector: selectorOrArray first 
				withStream: selectorOrArray allButFirst readStream ].
interpret
interpretSelector: selector withStream: stream
	| arguments oldSpec oldInstance |

	"Interpretation of parameters could change model spec and instance, and I do not 
	 want that, so I keep the values safe"
	oldSpec := self model spec.
	oldSpec ifNotNil: [ oldInstance := oldSpec instance ].
	
	"Now I interpret arguments"
	arguments := Array new: (selector occurrencesOf: $:).
	1 to: arguments size do: [ :index |
		 arguments 
			at: index 
			put: (self interpretArgument:stream next) ].
		
	"and now I restore values"
	oldSpec ifNotNil: [ oldSpec instance: oldInstance ].
	self model spec: oldSpec.
		 
	self receiver: (self receiver
		perform: selector
		withArguments: arguments).
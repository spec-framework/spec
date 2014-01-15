specs
defaultSpec

	^ {
		#ContainerModel.
			#add: . {{#model . #workingCopies} . 
					#layout: . #(#SpecLayoutFrame
									rightFraction: 0.5)} . 
			#add: . {{#model . #repositories } . 
					#layout: . #(#SpecLayoutFrame
									leftFraction: 0.5)}
		}
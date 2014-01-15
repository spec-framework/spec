specs
defaultSpec 

	^ {#ContainerModel.
			#add: . {{#model . #packageButton.} . #layout: .  #(#SpecLayoutFrame
										rightFraction: 0.25
										bottomFraction: 0
										bottomOffset: 25)} . 

			#add: . {{#model . #configButton.} .
						#layout: . #(#SpecLayoutFrame
										leftFraction: 0.25
										rightFraction: 0.5
										bottomFraction: 0
										bottomOffset: 25) } .
											
			#add: . {{#model . #sliceButton.} .
						#layout: . #(#SpecLayoutFrame
										leftFraction: 0.5
										rightFraction: 0.75
										bottomFraction: 0
										bottomOffset: 25) } .											

			#add: . {{#model . #browseButton.} .
						#layout: . #(#SpecLayoutFrame
										leftFraction: 0.75
										bottomFraction: 0
										bottomOffset: 25)} 	
		}
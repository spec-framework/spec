I interpret an spec array definition. 
The arrays should be of the form. 

#(SpecDefinition [elements] )

elements can be selectors, selectors with literal values or other SpecDefinition arrays. 

i.e.

#(Label)

#(model text).

#(Label.
	model: 42).

#(Label. 
	model: #(model text) 
	layoutFrame: #(LayoutFrame 
		top: 1.0 
		left: 1.0))
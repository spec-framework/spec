tests
testBuildWidgetWithBindings
	| model spec result |

	model := DummyComposableModel new.	
	spec := #(Panel 
		useProportionalLayout 
		addSplitters 
		vSpaceFill 
		hSpaceFill).

	self 
		shouldnt: [ result := NewSpecInterpreter interpret: spec withModel: model ]
		raise: Error.

	self assert: result class = PanelMorph.
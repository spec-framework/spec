tests
testBuildWidgetForWithSpec

	| model morph |
	model := TestingComposableModel new.
	morph := interpreter 
		interpret: #(TextSpec
			model: model)
		withModel: model.
	
	self assert: (morph model == model).
	self assert: (model widget class = PluggableTextMorph).
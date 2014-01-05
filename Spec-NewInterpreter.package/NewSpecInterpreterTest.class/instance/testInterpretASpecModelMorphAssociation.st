tests
testInterpretASpecModelMorphAssociation

	| spec model morph |
	model := DummyComposableModel new.
	spec := {#PluggableListMorph. #model:. #model}.
	morph := interpreter interpret: spec withModel: model.
	
	self assert: model widget == morph.
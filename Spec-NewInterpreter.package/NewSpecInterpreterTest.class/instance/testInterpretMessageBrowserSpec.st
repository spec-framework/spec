tests
testInterpretMessageBrowserSpec
	"I take MessageBrowser as an example of a complex spec and I interpret it"
	| spec model morph |
	
	model := MessageBrowser new.
	spec := MessageBrowser defaultSpec asArray. 
	
	morph := interpreter interpret: spec withModel: model.
	
	self assert: model widget == morph.
accessing
inspectorType: anInspectorClass
	"Use a new inspector type. Instantiate the given inspector class and replace the current view"
	
	anInspectorClass = self inspector class
		ifTrue: [  ^ self ].
	anInspectorClass isNil
		ifTrue: [ ^ self ].
		
	"remove the history top, to replace the currently stored inspector"
	history previous.
	self inspector: (anInspectorClass new 
		inspect: self object;
		yourself).
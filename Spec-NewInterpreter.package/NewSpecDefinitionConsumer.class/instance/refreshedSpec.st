private
refreshedSpec
	| spec |
	
	spec := self model spec.
	self model needRebuild: true.
	spec isRedrawable
		ifTrue: [ spec removeSubWidgets ].
	"spec isBasic
		ifTrue: [ ^ spec instance ]." "I do not know what the heck is this... I will check in 10'"
		
	^ spec 

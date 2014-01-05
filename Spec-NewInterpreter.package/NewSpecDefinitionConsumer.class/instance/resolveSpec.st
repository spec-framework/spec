private
resolveSpec

	^ self needRebuild 
		ifTrue: [ self refreshedSpec ]
		ifFalse: [ self basicResolveSpec ] .
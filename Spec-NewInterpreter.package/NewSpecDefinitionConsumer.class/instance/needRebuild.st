private
needRebuild
	^ self model needRebuild not 
		and: [ self model spec notNil ]
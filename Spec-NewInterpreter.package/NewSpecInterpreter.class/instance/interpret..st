private
interpret: specArray
	| index stream |

	stream := specArray asArray readStream.
	index := 0.
	[ stream atEnd ] whileFalse: [ 
		index := index + 1.
		(self consumerFor: stream next atIndex: index) 
			interpreter: self;
			interpretWith: stream ].

	self model spec: self spec.
	self spec instance == self model "Prevent infinite loop, and I do not like it"
		ifFalse: [ self spec instance: self spec instance bypassModel ].
		
	^ self spec instance
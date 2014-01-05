accessing
consumers 
	^ consumers ifNil: [ consumers := self collectConsumers ]
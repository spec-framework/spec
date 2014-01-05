accessing
bindingHolder

	^ bindings ifNil: [ bindings := self class bindingHolder ]
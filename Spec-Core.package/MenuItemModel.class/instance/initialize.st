initialize
initialize

	super initialize.

	action := [] asReactiveVariable.
	enabled := true asReactiveVariable.
	state := true asReactiveVariable.
	description := nil asReactiveVariable.
	name := '' asReactiveVariable.
	shortcut := nil asReactiveVariable.
	subMenu := nil asReactiveVariable.
	autoRefresh := false asReactiveVariable.
	icon := nil asReactiveVariable
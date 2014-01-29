menu
classMenu: menu shifted: shifted from: src to: dest
	"Fill aMenu with items appropriate for the class list"
	| menuSrc |
	
	src selectedClass ifNil: [ ^ nil ].
	
	menuSrc := menu copy.
	src classMenu: menuSrc shifted: shifted.

	menu fromSpec: (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorterClassListMenu'
		model: {self. src. dest}) 
		menuSpec.
menu
messageMenu: menu shifted: shifted from: src to: dest
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"
	| menuSrc |
	
	src selectedSelector ifNil: [ ^ nil ].

	menuSrc := menu copy.
	src messageMenu: menuSrc shifted: shifted.
	
	menu fromSpec: (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorterMessageListMenu'
		model: {self. src. dest}) 
		menuSpec.
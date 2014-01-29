menu
changesMenu: menu shifted: shifted from: src to: dest
 	| menuSrc1 |
	
	menuSrc1 := menu copy. 
	src changeSetMenu1: menuSrc1 shifted: shifted.
	 
	menu fromSpec: (PragmaMenuBuilder 
		pragmaKeyword: 'dualChangeSorteChangesListMenu'
		model: {self. src. dest}) 
		menuSpec
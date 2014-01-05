private
updateContainer
	| tree |
	tree := explorer treeListMorph.
	tree
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	explorer expandTreeInMorph: tree.
	container
		removeAllMorphs;
		addMorph: tree
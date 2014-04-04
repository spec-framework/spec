protocol
items: aList
	"Set the items of the list.
	aList is a collection of your domain specific items.
	Use a two stages notification (issue 7420)."

	<api: #st getter: #listItems registration: #whenListChanged:>
	| oldContents |
	oldContents := listHolder value.
	listHolder value: (sortingBlockHolder value
		ifNil: [ aList ]
		ifNotNil: [ :aBlock | aList sorted: aBlock ]).
	listAnnouncer announce: (ValueChanged oldValue: oldContents newValue: listHolder value)
protocol
buildWithSpec: aSpec
	| widget |

	widget := super buildWithSpec: aSpec.
	self selectedItems: selectionHolder contents.
	^ widget
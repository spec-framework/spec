as yet unclassified
title

	^ self manager selectedTab
		ifNil: [ 'Tabs Example' ]
		ifNotNil: [:tab | tab label ]
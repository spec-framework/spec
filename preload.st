[ [ Gofer it
	smalltalkhubUser: 'Pharo' project: 'Pharo30Inbox';
	package: 'SLICE-Issue-12684-NewValueHolder-Enhancements';
	version: 'SLICE-Issue-12684-NewValueHolder-Enhancements-BenjaminVanRyseghem.5';
	load ]
	on: MCMergeOrLoadWarning, MCMergeResolutionRequest
	do: [ :ex | ex merge ] ] 
	on: MCNoChangesException 
	do: [].
	
Smalltalk at: #ReactiveVariable
| repo names currentVersions toLoad |

[ [ Gofer it
	smalltalkhubUser: 'Pharo' project: 'Pharo30Inbox';
	package: 'SLICE-Issue-12684-NewValueHolder-Enhancements';
	load ]
	on: MCMergeOrLoadWarning, MCMergeResolutionRequest
	do: [ :ex | ex merge ] ] 
	on: MCNoChangesException 
	do: [].
	
repo := MCFileTreeRepository new directory: 'spec-master' asFileReference.

currentVersions := MCWorkingCopy allManagers 
	select: [ :e | (e ancestry ancestors) notEmpty ] 
	thenCollect: [ :e | e ancestry ancestors first name ].
	
names := repo packageDescriptionsFromReadableFileNames.

toLoad := names select: [ :e || currentVersion | 
	currentVersion := e first , '-', e second , '.', e third asString.
	(e first = 'ReactiveVariable') and: [ (currentVersions includes: currentVersion) not ] ].

toLoad do: [ :name || version |
	version := repo versionFromFileNamed: name first, '.package'.
	FileStream stdout << name first << '-'<< name second << '.'<< name third asString; crlf.
	[ version load ]
		on: MCMergeOrLoadWarning
		do: [ :ex | ex load ] ].
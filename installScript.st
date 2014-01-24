| repo names currentVersions toLoad |

repo := MCFileTreeRepository new directory: 'spec-master' asFileReference.

currentVersions := MCWorkingCopy allManagers 
	select: [ :e | (e ancestry ancestors) notEmpty ] 
	thenCollect: [ :e | e ancestry ancestors first name ].
	
names := repo packageDescriptionsFromReadableFileNames.

toLoad := names select: [ :e || currentVersion | 
	currentVersion := e first , '-', e second , '.', e third asString.
	(currentVersions includes: currentVersion) not ].

toLoad do: [ :name || version |
	version := repo versionFromFileNamed: name first, '.package'.
	FileStream stdout << name first << '-'<< name second << '.'<< name third asString; crlf.
	[ version load ]
		on: MCMergeOrLoadWarning
		do: [ :ex | ex load ] ].


*Spec-Core
adoptMenuModel: aMenuModel
"	| firstGroup |
	
	firstGroup := aMenuModel groups first."
	aMenuModel menuGroups do: [ :aGroup | self adoptMenuGroupModel: aGroup ]
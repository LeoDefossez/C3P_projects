Class {
	#name : 'FSEntry',
	#superclass : 'Object',
	#instVars : [
		'name',
		'parent'
	],
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'instance creation' }
FSEntry class >> named: aString [

	| inst |
	inst := super new.
	inst name: aString.
	^ inst
]

{ #category : 'instance creation' }
FSEntry class >> new [

	self error: 'Use other constructors'
]

{ #category : 'as yet unclassified' }
FSEntry >> acceptVisitor: aFSVisitor [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
FSEntry >> name [
	^ name
]

{ #category : 'as yet unclassified' }
FSEntry >> name: aString [ 
	name := aString
]

{ #category : 'as yet unclassified' }
FSEntry >> parent: aFSEntry [

	parent := aFSEntry
]

{ #category : 'as yet unclassified' }
FSEntry >> path [

	^ parent ifNil: [ ^ name ] ifNotNil: [ parent path , '/' , name ]
]

{ #category : 'as yet unclassified' }
FSEntry >> searchByName: aString [

	self subclassResponsibility
]

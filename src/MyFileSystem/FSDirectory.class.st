Class {
	#name : 'FSDirectory',
	#superclass : 'FSEntry',
	#instVars : [
		'children'
	],
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
FSDirectory >> acceptVisitor: aFSVisitor [

	^ aFSVisitor visitFSDirectory: self
]

{ #category : 'as yet unclassified' }
FSDirectory >> addChild: aFSEntry [

	children add: aFSEntry.
	aFSEntry parent: self
]

{ #category : 'as yet unclassified' }
FSDirectory >> children [
	^ children
]

{ #category : 'initialization' }
FSDirectory >> initialize [

	super initialize.
	children := OrderedCollection new
]

{ #category : 'as yet unclassified' }
FSDirectory >> searchByName: aString [

	| res |
	res := OrderedCollection new.
	self name = aString ifTrue: [ res add: self ].
	children do: [ :each | res addAll: (each searchByName: aString) ].
	^ res
]

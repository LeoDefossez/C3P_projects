Class {
	#name : 'FSDirectory',
	#superclass : 'FSEntry',
	#instVars : [
		'children'
	],
	#category : 'C3P-MyFileSystem-Model',
	#package : 'C3P-MyFileSystem',
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

Class {
	#name : 'FSFile',
	#superclass : 'FSEntry',
	#instVars : [
		'contents'
	],
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
FSFile >> acceptVisitor: aFSVisitor [
	
	^ aFSVisitor visitFSFile: self
]

{ #category : 'as yet unclassified' }
FSFile >> contents [
	^ contents
]

{ #category : 'as yet unclassified' }
FSFile >> contents: aString [ 
	contents := aString
]

{ #category : 'as yet unclassified' }
FSFile >> contentsMatch: aString [

	^ self contents beginsWith: aString
]

{ #category : 'as yet unclassified' }
FSFile >> searchByName: aString [

	^ self name = aString
		  ifTrue: [ { self } ]
		  ifFalse: [ {  } ]
]

Class {
	#name : 'FSSearchByContents',
	#superclass : 'FSSearchVisitor',
	#category : 'C3P-MyFileSystem-Model',
	#package : 'C3P-MyFileSystem',
	#tag : 'Model'
}

{ #category : 'accessing' }
FSSearchByContents >> search: aString in: aFSEntry [

	searched := aString.
	^ aFSEntry acceptVisitor: self
]

{ #category : 'accessing' }
FSSearchByContents >> visitFSDirectory: aFSDirectory [ 
	
	| res |
	res := OrderedCollection new.
	aFSDirectory children do: [ :each | res addAll: (each acceptVisitor: self) ].
	^ res
]

{ #category : 'accessing' }
FSSearchByContents >> visitFSFile: aFSFile [

	^ (aFSFile contentsMatch: searched)
		  ifTrue: [ { aFSFile } ]
		  ifFalse: [ {  } ]
]

{ #category : 'accessing' }
FSSearchByContents >> visitFSSymLink: aFSSymLinks [

	^ {  }
]

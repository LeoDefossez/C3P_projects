Class {
	#name : 'FSSearchByName',
	#superclass : 'FSSearchVisitor',
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'accessing' }
FSSearchByName >> search: aString in: aFSEntry [

	searched := aString.
	^ aFSEntry acceptVisitor: self
]

{ #category : 'accessing' }
FSSearchByName >> visitFSDirectory: aFSDirectory [ 
	
	| res |
	res := OrderedCollection new.
	aFSDirectory name = searched ifTrue: [ res add: aFSDirectory ].
	aFSDirectory children do: [ :each | res addAll: (each acceptVisitor: self) ].
	^ res
]

{ #category : 'accessing' }
FSSearchByName >> visitFSFile: aFSFile [

	^ aFSFile name = searched
		  ifTrue: [ { aFSFile } ]
		  ifFalse: [ {  } ]
]

{ #category : 'accessing' }
FSSearchByName >> visitFSSymLink: aFSSymLinks [

	^ aFSSymLinks name = searched
		  ifTrue: [ { aFSSymLinks } ]
		  ifFalse: [ {  } ]
]

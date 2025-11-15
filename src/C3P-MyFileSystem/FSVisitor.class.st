Class {
	#name : 'FSVisitor',
	#superclass : 'Object',
	#category : 'C3P-MyFileSystem-Model',
	#package : 'C3P-MyFileSystem',
	#tag : 'Model'
}

{ #category : 'accessing' }
FSVisitor class >> search: aString in: aFSEntry [

	^ self new search: aString in: aFSEntry
]

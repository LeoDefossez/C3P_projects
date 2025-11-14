Class {
	#name : 'FSVisitor',
	#superclass : 'Object',
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'accessing' }
FSVisitor class >> search: aString in: aFSEntry [

	^ self new search: aString in: aFSEntry
]

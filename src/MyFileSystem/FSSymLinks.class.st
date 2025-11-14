Class {
	#name : 'FSSymLinks',
	#superclass : 'FSEntry',
	#instVars : [
		'link'
	],
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
FSSymLinks >> acceptVisitor: aFSVisitor [

	^ aFSVisitor visitFSSymLink: self
]

{ #category : 'as yet unclassified' }
FSSymLinks >> link: aFSFile [ 
	link := aFSFile
]

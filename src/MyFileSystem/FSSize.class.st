Class {
	#name : 'FSSize',
	#superclass : 'FSVisitor',
	#category : 'MyFileSystem-Model',
	#package : 'MyFileSystem',
	#tag : 'Model'
}

{ #category : 'instance creation' }
FSSize >> of: aFSEntry [ 
	
	^ aFSEntry acceptVisitor: self
]

{ #category : 'instance creation' }
FSSize >> visitFSDirectory: aFSDirectory [

	| sum |
	sum := 0.
	aFSDirectory children do: [ :each | sum := sum + (each acceptVisitor: self) ].
	^ sum
]

{ #category : 'instance creation' }
FSSize >> visitFSFile: aFSFile [

	^ aFSFile contents size
]

{ #category : 'instance creation' }
FSSize >> visitFSSymLink: aFSSymLinks [ 
	
	^ 0
]

Class {
	#name : 'FSSizeTest',
	#superclass : 'TestCase',
	#category : 'MyFileSystem-Tests',
	#package : 'MyFileSystem',
	#tag : 'Tests'
}

{ #category : 'tests' }
FSSizeTest >> testSizeOfDirectory [

	self assert: (FSSize of: (FSDirectory named: 'AAAAAAAAAAAAA')) equals: 0
]

{ #category : 'tests' }
FSSizeTest >> testSizeOfFile [

	| file contents |
	contents := #YAAAAAAAAAAAAAAAAAAAAA.
	file := FSFile named: #directory.
	file contents: contents.

	self assert: (FSSize of: file) equals: contents size
]

{ #category : 'tests' }
FSSizeTest >> testSizeOfSymLink [

	| file symLink |
	file := (FSFile named: 'ok') contents: 'ok'; yourself.
	symLink := (FSSymLinks named: 'ok') link: file.

	self assert: (FSSize of: symLink) equals: 0
]

{ #category : 'tests' }
FSSizeTest >> testSizeOfTwoFile [

	| directory contents1 contents2 |
	contents1 := #YAAAAAAAAAAAAAAAAAAAAA.
	contents2 := #BBBBBBBBBBBBB.
	directory := (FSDirectory named: '')
		             addChild: ((FSFile named: #directory) contents: contents1);
		             addChild: ((FSFile named: #directory) contents: contents2).

	self assert: (FSSize of: directory) equals: contents1 size + contents2 size
]

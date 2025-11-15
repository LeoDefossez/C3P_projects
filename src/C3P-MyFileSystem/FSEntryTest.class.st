Class {
	#name : 'FSEntryTest',
	#superclass : 'TestCase',
	#instVars : [
		'name'
	],
	#category : 'C3P-MyFileSystem-Tests',
	#package : 'C3P-MyFileSystem',
	#tag : 'Tests'
}

{ #category : 'tests' }
FSEntryTest >> testInit [

	| name |
	name := #entry.
	self assert: (FSEntry named: name) name equals: name
]

{ #category : 'tests' }
FSEntryTest >> testPathRecursiveStrucure [

	| directory file |
	directory := FSDirectory named: 'usr'.
	file := FSFile named: 'file'.
	directory addChild: file.

	self assert: directory path equals: 'usr'.
	self assert: file path equals: 'usr/file'.
]

{ #category : 'tests' }
FSEntryTest >> testPathSingleDirectory [

	| directory |
	directory := FSFile named: 'ok'.

	self assert: directory path equals: 'ok'
]

{ #category : 'tests' }
FSEntryTest >> testPathSingleFile [

	| file |
	file := FSFile named: 'ok'.

	self assert: file path equals: 'ok'
]

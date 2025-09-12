Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'initialization' }
Die >> faces [

	^ faces
]

{ #category : 'initialization' }
Die >> faces: anInteger [ 

	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [
	
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: '(' , faces printString , ')'
]

{ #category : 'initialization' }
Die >> roll [

	^ Random new nextIntegerBetween: 1 and: faces
]

Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: anInteger [

	^ self new
		  faces: anInteger;
		  yourself
]

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

	^ faces atRandom
]

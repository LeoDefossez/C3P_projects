Class {
	#name : 'Die',
	#superclass : 'DiceElement',
	#instVars : [
		'faces'
	],
	#category : 'C3P-Dice',
	#package : 'C3P-Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: anInteger [

	^ self new
		  faces: anInteger;
		  yourself
]

{ #category : 'initialization' }
Die >> + aDiceElement [

	^ aDiceElement plusDie: self
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

{ #category : 'arithmetic' }
Die >> plusDie: aDie [

	^ DieHandle new
		  addDie: self;
		  addDie: aDie;
		  yourself
]

{ #category : 'arithmetic' }
Die >> plusDieHandle: aDieHandle [ 
	
		^ aDieHandle addDie: self; yourself 
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

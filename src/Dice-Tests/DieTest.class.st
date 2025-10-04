Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
DieTest >> testCreationIsOk [

	| die |
	die := Die new.
	10 timesRepeat: [ self assert: (Die withFaces: 20) faces equals: 20  ]
]

{ #category : 'tests' }
DieTest >> testInitializationIsOk [

	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRoll [

	| die |
	die := Die new.
	10 timesRepeat: [ self assert: (die roll between: 1 and: 6) ]
]

{ #category : 'tests' }
DieTest >> testSumTwoDices [

	self assert: (Die new + Die new) class equals: DieHandle
]

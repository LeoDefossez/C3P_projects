Class {
	#name : 'DiceElement',
	#superclass : 'Object',
	#category : 'C3P-Dice',
	#package : 'C3P-Dice'
}

{ #category : 'arithmetic' }
DiceElement >> + aDiceElement [

	self subclassResponsibility 
]

{ #category : 'arithmetic' }
DiceElement >> plusDie: aDie [

	self subclassResponsibility 
]

{ #category : 'arithmetic' }
DiceElement >> plusDieHandle: aDieHandle [

	self subclassResponsibility 
]

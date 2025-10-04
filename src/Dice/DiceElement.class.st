Class {
	#name : 'DiceElement',
	#superclass : 'Object',
	#category : 'Dice',
	#package : 'Dice'
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

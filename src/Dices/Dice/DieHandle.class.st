Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'faces',
		'dices'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DieHandle >> + aDieHandle [ 
	dices addAll: (aDieHandle dices)
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [ 
	
	dices add: aDie
]

{ #category : 'adding' }
DieHandle >> diceNumber [
	
	^ dices size
]

{ #category : 'adding' }
DieHandle >> dices [
	^ dices
]

{ #category : 'adding' }
DieHandle >> initialize [ 
	
	dices := OrderedCollection new
]

{ #category : 'adding' }
DieHandle >> maxRoll [

	^ (dices collect: [ :die | die faces ]) sum
]

{ #category : 'adding' }
DieHandle >> roll [
	
	^ (dices collect: [:die | die roll ]) sum
]

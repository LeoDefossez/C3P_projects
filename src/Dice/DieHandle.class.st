Class {
	#name : 'DieHandle',
	#superclass : 'DiceElement',
	#instVars : [
		'dices'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DieHandle >> + aDiceElement [
	
	^ aDiceElement plusDieHandle: self
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
DieHandle >> plusDie: aDie [ 
	
	^ self
		  addDie: aDie;
		  yourself
]

{ #category : 'arithmetic' }
DieHandle >> plusDieHandle: aDieHandle [
	aDieHandle dices do:[:die | self addDie: die]
]

{ #category : 'adding' }
DieHandle >> roll [
	
	^ (dices collect: [:die | die roll ]) sum
]

"
I am an abstract classes for every action in the rock paper scissors game

my entry point is the method vs:

exemple:

Rock new vs: Scissors new >> #Rock
"
Class {
	#name : 'RPSAction',
	#superclass : 'Object',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
RPSAction >> draw [ 
	^ #draw
]

{ #category : 'as yet unclassified' }
RPSAction >> vs: aRPSAction [ 
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsPaper: aPaper [ 
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsRock: aRock [
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsScissors: aScissors [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
RPSAction >> win [

	^ self class name
]

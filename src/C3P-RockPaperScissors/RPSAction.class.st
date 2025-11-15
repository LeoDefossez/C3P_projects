"
I am an abstract classes for every action in the rock paper scissors game

my entry point is the method vs:

exemple:

Rock new vs: Scissors new >> #Rock
"
Class {
	#name : 'RPSAction',
	#superclass : 'Object',
	#category : 'C3P-RockPaperScissors',
	#package : 'C3P-RockPaperScissors'
}

{ #category : 'as yet unclassified' }
RPSAction >> draw [ 
	^ #draw
]

{ #category : 'as yet unclassified' }
RPSAction >> vs: aRPSAction [ 
	
	^ self vs: aRPSAction withResultHandler: RPSSymbolResultHandler new
]

{ #category : 'as yet unclassified' }
RPSAction >> vs: aRPSAction withResultHandler: aRPSResultHandler [
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsPaper: aPaper withResultHandler: aRPSResultHandler [
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsRock: aRock withResultHandler: aRPSResultHandler [
	
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
RPSAction >> vsScissors: aScissors withResultHandler: aRPSResultHandler [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
RPSAction >> win [

	^ self class name
]

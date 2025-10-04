Class {
	#name : 'Scissors',
	#superclass : 'RPSAction',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> vs: aRPSAction [
	
	^ aRPSAction vsScissors: self
	
]

{ #category : 'as yet unclassified' }
Scissors >> vsPaper: aPaper [ 
	
	^ self win
]

{ #category : 'as yet unclassified' }
Scissors >> vsRock: aRock [

	^ aRock win
]

{ #category : 'as yet unclassified' }
Scissors >> vsScissors: aScissors [

	^ self draw
]

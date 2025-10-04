Class {
	#name : 'Rock',
	#superclass : 'RPSAction',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Rock >> vs: aRPSAction [
	^ aRPSAction vsRock: self
]

{ #category : 'as yet unclassified' }
Rock >> vsPaper: aPaper [ 
	
	^ aPaper win
]

{ #category : 'as yet unclassified' }
Rock >> vsRock: aRock [

	^ self draw
]

{ #category : 'as yet unclassified' }
Rock >> vsScissors: aScissors [ 
	^ self win
]

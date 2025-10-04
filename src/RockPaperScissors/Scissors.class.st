Class {
	#name : 'Scissors',
	#superclass : 'RPSAction',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> vs: aRPSAction withResultHandler: aRPSResultHandler [
	
	^ aRPSAction vsScissors: self withResultHandler: aRPSResultHandler
	
]

{ #category : 'as yet unclassified' }
Scissors >> vsPaper: aPaper withResultHandler: aRPSResultHandler [
	
	^ aRPSResultHandler  scissorsWin: self
]

{ #category : 'as yet unclassified' }
Scissors >> vsRock: aRock withResultHandler: aRPSResultHandler [

	^ aRPSResultHandler rockWin: aRock
]

{ #category : 'as yet unclassified' }
Scissors >> vsScissors: aScissors withResultHandler: aRPSResultHandler [

	^ aRPSResultHandler draw
]

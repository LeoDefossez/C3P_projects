Class {
	#name : 'Scissors',
	#superclass : 'RPSAction',
	#category : 'C3P-RockPaperScissors',
	#package : 'C3P-RockPaperScissors'
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

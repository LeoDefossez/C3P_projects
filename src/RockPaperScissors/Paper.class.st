Class {
	#name : 'Paper',
	#superclass : 'RPSAction',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> vs: aRPSAction withResultHandler: aRPSResultHandler [
	
	^ aRPSAction vsPaper: self withResultHandler: aRPSResultHandler
]

{ #category : 'as yet unclassified' }
Paper >> vsPaper: aPaper withResultHandler: aRPSResultHandler [

	^ aRPSResultHandler draw
]

{ #category : 'as yet unclassified' }
Paper >> vsRock: aRock withResultHandler: aRPSResultHandler [
	
	^ aRPSResultHandler paperWin: self
]

{ #category : 'as yet unclassified' }
Paper >> vsScissors: aScissors withResultHandler: aRPSResultHandler [

	^ aRPSResultHandler scissorsWin: aScissors
]

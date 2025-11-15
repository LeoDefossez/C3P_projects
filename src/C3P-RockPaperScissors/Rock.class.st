Class {
	#name : 'Rock',
	#superclass : 'RPSAction',
	#category : 'C3P-RockPaperScissors',
	#package : 'C3P-RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Rock >> vs: aRPSAction withResultHandler: aRPSResultHandler [
	^ aRPSAction vsRock: self withResultHandler: aRPSResultHandler
]

{ #category : 'as yet unclassified' }
Rock >> vsPaper: aPaper withResultHandler: aRPSResultHandler [
	
	^ aRPSResultHandler paperWin: aPaper
]

{ #category : 'as yet unclassified' }
Rock >> vsRock: aRock withResultHandler: aRPSResultHandler [

	^ aRPSResultHandler draw
]

{ #category : 'as yet unclassified' }
Rock >> vsScissors: aScissors withResultHandler: aRPSResultHandler [
	
	^ aRPSResultHandler rockWin: self
]

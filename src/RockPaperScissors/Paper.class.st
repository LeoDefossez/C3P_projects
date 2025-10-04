Class {
	#name : 'Paper',
	#superclass : 'RPSAction',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> vs: aRPSAction [
	
	^ aRPSAction vsPaper: self
]

{ #category : 'as yet unclassified' }
Paper >> vsPaper: aPaper [

	^ self draw
]

{ #category : 'as yet unclassified' }
Paper >> vsRock: aRock [
	
	^ self win
]

{ #category : 'as yet unclassified' }
Paper >> vsScissors: aScissors [

	^ aScissors win
]

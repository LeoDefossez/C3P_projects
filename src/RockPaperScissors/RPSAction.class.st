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

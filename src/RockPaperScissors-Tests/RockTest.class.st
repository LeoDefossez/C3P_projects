Class {
	#name : 'RockTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests',
	#package : 'RockPaperScissors-Tests'
}

{ #category : 'tests' }
RockTest >> testAgainstPaper [

	self assert: (Rock new vs: Paper new) equals: #Paper
]

{ #category : 'tests' }
RockTest >> testAgainstRock [

	self assert: (Rock new vs: Rock new) equals: #draw
]

{ #category : 'tests' }
RockTest >> testAgainstScissors [

	self assert: (Rock new vs: Scissors new) equals: #Rock
]

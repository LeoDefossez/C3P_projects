Class {
	#name : 'ScissorsTest',
	#superclass : 'TestCase',
	#category : 'C3P-RockPaperScissors-Tests',
	#package : 'C3P-RockPaperScissors-Tests'
}

{ #category : 'tests' }
ScissorsTest >> testAgainstPaper [

	self assert: (Scissors new vs: Paper new) equals: #Scissors
]

{ #category : 'tests' }
ScissorsTest >> testAgainstRock [

	self assert: (Scissors new vs: Rock new) equals: #Rock
]

{ #category : 'tests' }
ScissorsTest >> testAgainstScissors [

	self assert: (Scissors new vs: Scissors new) equals: #draw
]

"
A PaperTest is a test class for testing the behavior of Paper
"
Class {
	#name : 'PaperTest',
	#superclass : 'TestCase',
	#category : 'C3P-RockPaperScissors-Tests',
	#package : 'C3P-RockPaperScissors-Tests'
}

{ #category : 'tests' }
PaperTest >> testAgainstPaper [

	self assert: (Paper new vs: Paper new) equals: #draw
]

{ #category : 'tests' }
PaperTest >> testAgainstRock [

	self assert: (Paper new vs: Rock new) equals: #Paper
]

{ #category : 'tests' }
PaperTest >> testAgainstScissors [

	self assert: (Paper new vs: Scissors new) equals: #Scissors
]

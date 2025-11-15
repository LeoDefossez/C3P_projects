"
A RPSSymbolResultHandlerTest is a test class for testing the behavior of RPSSymbolResultHandler
"
Class {
	#name : 'RPSSymbolResultHandlerTest',
	#superclass : 'TestCase',
	#category : 'C3P-RockPaperScissors-Tests',
	#package : 'C3P-RockPaperScissors-Tests'
}

{ #category : 'tests' }
RPSSymbolResultHandlerTest >> testDraw [

	self assert: (RPSSymbolResultHandler new draw) equals: #draw
]

{ #category : 'tests' }
RPSSymbolResultHandlerTest >> testPaperWin [

	self assert: (RPSSymbolResultHandler new paperWin: Paper new) equals: Paper name
]

{ #category : 'tests' }
RPSSymbolResultHandlerTest >> testRockWin [

	self assert: (RPSSymbolResultHandler new paperWin: Rock new) equals: Rock name
]

{ #category : 'tests' }
RPSSymbolResultHandlerTest >> testScissorsWin [

	self assert: (RPSSymbolResultHandler new paperWin: Scissors new) equals: Scissors name
]

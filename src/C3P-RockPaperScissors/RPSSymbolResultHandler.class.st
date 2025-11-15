Class {
	#name : 'RPSSymbolResultHandler',
	#superclass : 'RPSResultHandler',
	#category : 'C3P-RockPaperScissors',
	#package : 'C3P-RockPaperScissors'
}

{ #category : 'drawing' }
RPSSymbolResultHandler >> draw [

	^ #draw
]

{ #category : 'drawing' }
RPSSymbolResultHandler >> paperWin: aPaper [ 
	
	^ self winner: aPaper
]

{ #category : 'drawing' }
RPSSymbolResultHandler >> rockWin: aRock [ 
	
	^ self winner: aRock
]

{ #category : 'drawing' }
RPSSymbolResultHandler >> scissorsWin: aScissors [ 
	
	^ self winner: aScissors 
]

{ #category : 'drawing' }
RPSSymbolResultHandler >> winner: aRPSAction [
	
	^ aRPSAction class name
		
]

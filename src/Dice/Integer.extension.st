Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> d: anInteger [

	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: anInteger) ].
	^ handle
]

Class {
	#name : 'BaselineOfC3PProject',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfC3PProject',
	#package : 'BaselineOfC3PProject'
}

{ #category : 'baselines' }
BaselineOfC3PProject >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec
				package: #'C3P-Dice';
				package: #'C3P-Dice-Tests' with: [ spec requires: #( 'C3P-Dice' ) ];
				package: #'C3P-Flags';
				package: #'C3P-MyAnimals';
				package: #'C3P-MyFileSystem';
				package: #'C3P-RockPaperScissors';
				package: #'C3P-RockPaperScissors-Tests' with: [ spec requires: #( 'C3P-RockPaperScissors' ) ] ]
]

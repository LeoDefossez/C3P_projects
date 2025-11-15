Class {
	#name : 'MyCat',
	#superclass : 'MyAnimal',
	#category : 'C3P-MyAnimals',
	#package : 'C3P-MyAnimals'
}

{ #category : 'as yet unclassified' }
MyCat >> alimentation [
^ 'fish'
]

{ #category : 'as yet unclassified' }
MyCat >> description [
	^ super genericDescription , ' (a Cat)'
]

Class {
	#name : 'MyCat',
	#superclass : 'MyAnimal',
	#category : 'MyAnimals',
	#package : 'MyAnimals'
}

{ #category : 'as yet unclassified' }
MyCat >> alimentation [
^ 'fish'
]

{ #category : 'as yet unclassified' }
MyCat >> description [
	^ super genericDescription , ' (a Cat)'
]

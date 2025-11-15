Class {
	#name : 'MyAnimal',
	#superclass : 'Object',
	#category : 'C3P-MyAnimals',
	#package : 'C3P-MyAnimals'
}

{ #category : 'as yet unclassified' }
MyAnimal >> food [

	^ 'I eat ', self alimentation
]

{ #category : 'as yet unclassified' }
MyAnimal >> genericDescription [
	^ 'I am an animal'
]

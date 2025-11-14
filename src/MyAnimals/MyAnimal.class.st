Class {
	#name : 'MyAnimal',
	#superclass : 'Object',
	#category : 'MyAnimals',
	#package : 'MyAnimals'
}

{ #category : 'as yet unclassified' }
MyAnimal >> food [

	^ 'I eat ', self alimentation
]

{ #category : 'as yet unclassified' }
MyAnimal >> genericDescription [
	^ 'I am an animal'
]

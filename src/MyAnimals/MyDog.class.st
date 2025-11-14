Class {
	#name : 'MyDog',
	#superclass : 'MyAnimal',
	#category : 'MyAnimals',
	#package : 'MyAnimals'
}

{ #category : 'as yet unclassified' }
MyDog >> alimentation [
	^ 'everything my owner gives'
]

{ #category : 'accessing' }
MyDog >> description [
	^ self genericDescription , ' (a Dog)'
]

Class {
	#name : 'MyDog',
	#superclass : 'MyAnimal',
	#category : 'C3P-MyAnimals',
	#package : 'C3P-MyAnimals'
}

{ #category : 'as yet unclassified' }
MyDog >> alimentation [
	^ 'everything my owner gives'
]

{ #category : 'accessing' }
MyDog >> description [
	^ self genericDescription , ' (a Dog)'
]

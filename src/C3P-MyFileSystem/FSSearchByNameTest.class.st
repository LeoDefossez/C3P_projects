Class {
	#name : 'FSSearchByNameTest',
	#superclass : 'TestCase',
	#category : 'C3P-MyFileSystem-Tests',
	#package : 'C3P-MyFileSystem',
	#tag : 'Tests'
}

{ #category : 'tests' }
FSSearchByNameTest >> testSearchNoMatch [

	| subDict structure |
	subDict := FSDirectory named: #ok.
	structure := FSDirectory named: #directory.
	subDict addChild: (FSFile named: #LostChild).
	structure addChild: subDict.


	self assert: (FSSearchByName search: #YouSpinMeRightRound in: structure) isEmpty
]

{ #category : 'tests' }
FSSearchByNameTest >> testSearchOneDirectory [

	| searchedName searched structure |
	searchedName := #Searched.
	searched := FSDirectory named: searchedName.
	structure := FSDirectory named: #directory.
	searched addChild: (FSFile named: #LostChild).
	structure addChild: searched.


	self assertCollection: (FSSearchByName search: searchedName in: structure) hasSameElements: { searched }
]

{ #category : 'tests' }
FSSearchByNameTest >> testSearchOneDirectoryOneFile [

	| searchedName searched structure child |
	searchedName := #Searched.
	searched := FSDirectory named: searchedName.
	structure := FSDirectory named: #directory.
	child := FSFile named: searchedName.
	searched addChild: child.
	structure addChild: searched.


	self assertCollection: (FSSearchByName search: searchedName in: structure) hasSameElements: {
			searched.
			child }
]

{ #category : 'tests' }
FSSearchByNameTest >> testSearchOneFile [

	| searchedName subDir structure child |
	searchedName := #Searched.
	subDir := FSDirectory named: #subDir.
	structure := FSDirectory named: #directory.
	child := FSFile named: searchedName.
	subDir addChild: child.
	structure addChild: subDir.


	self assertCollection: (FSSearchByName search: searchedName in: structure) hasSameElements: { child }
]

{ #category : 'tests' }
FSSearchByNameTest >> testSearchSymlink [

	| searchedName structure child symLink |
	searchedName := #Searched.
	structure := FSDirectory named: #directory.
	child := FSFile named: #ok.
	symLink := (FSSymLinks named: searchedName) link: child.

	structure
		addChild: child;
		addChild: symLink.


	self assertCollection: (FSSearchByName search: searchedName in: structure) hasSameElements: { symLink }
]

{ #category : 'tests' }
FSSearchByNameTest >> testSearchTwoDirectory [

	| searchedName searched structure |
	searchedName := #Searched.
	searched := FSDirectory named: searchedName.
	structure := FSDirectory named: searchedName.
	searched addChild: (FSFile named: #LostChild).
	structure addChild: searched.


	self assertCollection: (FSSearchByName search: searchedName in: structure) hasSameElements: { searched . structure}
]

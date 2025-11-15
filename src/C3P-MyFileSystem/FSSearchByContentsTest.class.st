Class {
	#name : 'FSSearchByContentsTest',
	#superclass : 'TestCase',
	#category : 'C3P-MyFileSystem-Tests',
	#package : 'C3P-MyFileSystem',
	#tag : 'Tests'
}

{ #category : 'tests' }
FSSearchByContentsTest >> testSearchNoMatch [

	| searched structure searchedContents |
	searchedContents := #YAAAAAAAAAAAAAAAAAAAAA.
	structure := FSDirectory named: #directory.
	searched := (FSFile named: #file)
		            contents: #ok;
		            yourself.

	structure addChild: searched.

	self assertCollection: (FSSearchByContents search: searchedContents in: structure) hasSameElements: {  }
]

{ #category : 'tests' }
FSSearchByContentsTest >> testSearchOneMatch [

	| searched1 structure searchedContents |
	searchedContents := #YAAAAAAAAAAAAAAAAAAAAA.
	structure := FSDirectory named: #directory.
	searched1 := (FSFile named: #file)
		             contents: searchedContents;
		             yourself.

	structure addChild: searched1.

	self assertCollection: (FSSearchByContents search: searchedContents in: structure) hasSameElements: { searched1 }
]

{ #category : 'tests' }
FSSearchByContentsTest >> testSearchSymLink [

	| searched1 structure searchedContents symLink |
	searchedContents := #YAAAAAAAAAAAAAAAAAAAAA.
	structure := FSDirectory named: #directory.
	searched1 := (FSFile named: #file)
		             contents: searchedContents;
		             yourself.
	symLink := (FSSymLinks named: 'ok') link: searched1.

	structure
		addChild: searched1;
		addChild: symLink.

	self assertCollection: (FSSearchByContents search: searchedContents in: structure) hasSameElements: { searched1 }
]

{ #category : 'tests' }
FSSearchByContentsTest >> testSearchTwoMatch [

	| searched1 searched2 structure searchedContents |
	searchedContents := #YAAAAAAAAAAAAAAAAAAAAA.
	structure := FSDirectory named: #directory.
	searched1 := (FSFile named: #file)
		             contents: searchedContents;
		             yourself.
	searched2 := (FSFile named: #file)
		             contents: searchedContents;
		             yourself.
	structure
		addChild: searched1;
		addChild: searched2.

	self assertCollection: (FSSearchByContents search: searchedContents in: structure) hasSameElements: {
			searched1.
			searched2 }
]

{ #category : 'tests' }
FSSearchByContentsTest >> testSearchUseBeginWith [

	| searched structure searchedContents |
	searchedContents := 'YAAAAA'.
	structure := FSDirectory named: #directory.
	searched := (FSFile named: #file)
		            contents: searchedContents , 'AAAAAAA';
		            yourself.

	structure addChild: searched.

	self assertCollection: (FSSearchByContents search: searchedContents in: structure) hasSameElements: { searched }
]

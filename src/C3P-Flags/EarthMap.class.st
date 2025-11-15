"
How to use:

EarthMap new
importCountriesFrom: 'pharo-local/iceberg/LeoDefossez/C3P_projects/ressources/world.svg'   asFileReference;
openPopulatedCanvas;
yourself
"
Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'C3P-Flags',
	#package : 'C3P-Flags'
}

{ #category : 'initialization' }
EarthMap >> countries [
	^ countries
]

{ #category : 'initialization' }
EarthMap >> importCountriesFrom: aFileReference [

	(XMLDOMParser parse: aFileReference readStream contents) document nodes
		first nodes do: [ :node | node class = XMLElement ifTrue: [ self importCountryFromXMLNode: node ] ]
]

{ #category : 'initialization' }
EarthMap >> importCountryFromXMLNode: aXMLElement [

	countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [

	super initialize.
	countries := OrderedCollection new
]

{ #category : 'initialization' }
EarthMap >> openPopulatedCanvas [
self populatedCanvas open
]

{ #category : 'initialization' }
EarthMap >> populatedCanvas [

	^ RSCanvas new
		  addAll: (countries collect: [ :country | country asRSShape ]);
		  @ RSCanvasController;
		  yourself
]

{ #category : 'initialization' }
EarthMap >> xmlTreeFromFile: aFileName [

	^ aFileName asFileReference readStreamDo: [ :stream | (XMLDOMParser parse: stream) document ]
]

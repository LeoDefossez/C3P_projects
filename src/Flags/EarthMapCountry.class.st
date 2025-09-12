Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'Flags',
	#package : 'Flags'
}

{ #category : 'instance creation' }
EarthMapCountry >> asRSShape [

	^ RSSVGPath new svgPath: svgPath
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [

	svgPath := aXMLElement attributeAt: 'd'.
	name := aXMLElement attributeAt: 'title'.
	code := aXMLElement attributeAt: 'id'
]

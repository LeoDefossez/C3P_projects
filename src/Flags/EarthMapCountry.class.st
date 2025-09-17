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
EarthMapCountry >> code [
	^ code
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [

	svgPath := aXMLElement attributeAt: 'd'.
	name := aXMLElement attributeAt: 'title'.
	code := aXMLElement attributeAt: 'id'
]

{ #category : 'instance creation' }
EarthMapCountry >> inspectorShape: aBuilder [

	<inspectorPresentationOrder: 0 title: 'Shape'>
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController.
	^ SpRoassalInspectorPresenter new
		  canvas: canvas;
		  yourself
]

{ #category : 'instance creation' }
EarthMapCountry >> name [
	^ name
]

{ #category : 'instance creation' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ' , name
]

{ #category : 'instance creation' }
EarthMapCountry >> svgPath [
	^ svgPath
]

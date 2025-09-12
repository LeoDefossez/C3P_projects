"
Entry point:

(EarthCountryBrowser on:
(EarthMap new importCountriesFrom: 'pharo-local/iceberg/LeoDefossez/C3P_projects/ressources/world.svg'   asFileReference))
open
"
Class {
	#name : 'EarthCountryBrowser',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'countryList',
		'countryCode',
		'countryFlag'
	],
	#category : 'Flags',
	#package : 'Flags'
}

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> connectPresenters [

	countryList whenSelectedItemChangedDo: [ :item | self onCountrySelected: item ]
]

{ #category : 'layout' }
EarthCountryBrowser >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SpBoxLayout newLeftToRight
				   add: countryList expand: true;
				   add: countryCode width: 40)
		  height: self class toolbarHeight;
		  add: countryFlag height: 350;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> flagForCountryCode: astring [

	| request pngArray |
	request := ZnClient new.
	request get: 'https://flagcdn.com/w320/' , astring asLowercase , '.png'.
	request isSuccess ifTrue: [
			pngArray := request response contents.
			^ ImageReadWriter formFromStream: (ReadStream on: pngArray) ].
	^ BorderedMorph new asForm
]

{ #category : 'initialization' }
EarthCountryBrowser >> initializePresenters [

	super initializePresenters.
	countryList := self newDropList.
	countryList display: [ :item | item name ].
	countryList sortingBlock: [ :a :b | a model name < b model name ].
	countryList items: self model countries.
	countryCode := self newTextInput.
	countryCode editable: false.
	countryCode text: '
--
'.
	countryFlag := self newImage
]

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> onCountrySelected: countryItem [

	countryCode text: ' ' , countryItem code.
	
	countryFlag image: (self flagForCountryCode: countryItem code)
]

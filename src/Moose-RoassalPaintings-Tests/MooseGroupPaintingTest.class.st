Class {
	#name : #MooseGroupPaintingTest,
	#superclass : #TestCase,
	#instVars : [
		'window'
	],
	#category : #'Moose-RoassalPaintings-Tests'
}

{ #category : #running }
MooseGroupPaintingTest >> tearDown [
	window ifNotNil: [ window delete ].
	super tearDown
]

{ #category : #tests }
MooseGroupPaintingTest >> testBasic [
	| m |
	m := MooseGroup new.
	self assertEmpty: m symbolsUsedInName.
	window := m viewNameCloud.
	self assert: window isNotNil
]

{ #category : #tests }
MooseGroupPaintingTest >> testBasic02 [
	| m |
	m := MooseGroup new.
	m add: (FAMIXClass new name: 'Hello').
	m add: (FAMIXClass new name: 'World').

	self assert: m symbolsUsedInName size equals: 1.

	window := m viewNameCloud.
	self assert: window isNotNil
]

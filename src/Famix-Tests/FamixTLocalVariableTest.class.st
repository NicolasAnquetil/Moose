Class {
	#name : #FamixTLocalVariableTest,
	#superclass : #TestCase,
	#traits : 'TFamixTLocalVariableTest',
	#classTraits : 'TFamixTLocalVariableTest classTrait',
	#category : #'Famix-Tests-Tests'
}

{ #category : #overrides }
FamixTLocalVariableTest >> setUp [
self entity: (MooseEntity new copyWithTalent:FamixTLocalVariable).
self entity class initializeSlots: self entity.
]
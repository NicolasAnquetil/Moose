Class {
	#name : #FamixTAnnotationInstanceTest,
	#superclass : #TestCase,
	#traits : 'TFamixTAnnotationInstanceTest',
	#classTraits : 'TFamixTAnnotationInstanceTest classTrait',
	#category : #'Famix-Tests-Tests'
}

{ #category : #overrides }
FamixTAnnotationInstanceTest >> setUp [
self entity: (MooseEntity new copyWithTalent:FamixTAnnotationInstance).
self entity class initializeSlots: self entity.
]
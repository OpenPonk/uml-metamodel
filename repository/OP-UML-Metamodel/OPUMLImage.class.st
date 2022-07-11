"
Physical definition of a graphical image.
"
Class {
	#name : #OPUMLImage,
	#superclass : #OPUMLElement,
	#instVars : [
		'content',
		'location',
		'format'
	],
	#category : 'OP-UML-Metamodel-Packages'
}

{ #category : #accessing }
OPUMLImage >> content [
	"This contains the serialization of the image according to the format. The value could represent a bitmap, image such as a GIF file, or drawing 'instructions' using a standard such as Scalable Vector Graphic (SVG) (which is XML based)."
	^ content
]

{ #category : #accessing }
OPUMLImage >> content: aString [
	"This contains the serialization of the image according to the format. The value could represent a bitmap, image such as a GIF file, or drawing 'instructions' using a standard such as Scalable Vector Graphic (SVG) (which is XML based)."
	content := aString
]

{ #category : #accessing }
OPUMLImage >> format [
	"This indicates the format of the content, which is how the string content should be interpreted. The following values are reserved: SVG, GIF, PNG, JPG, WMF, EMF, BMP. In addition the prefix 'MIME: ' is also reserved. This option can be used as an alternative to express the reserved values above, for example ""SVG"" could instead be expressed as ""MIME: image/svg+xml""."
	^ format
]

{ #category : #accessing }
OPUMLImage >> format: aString [
	"This indicates the format of the content, which is how the string content should be interpreted. The following values are reserved: SVG, GIF, PNG, JPG, WMF, EMF, BMP. In addition the prefix 'MIME: ' is also reserved. This option can be used as an alternative to express the reserved values above, for example ""SVG"" could instead be expressed as ""MIME: image/svg+xml""."
	format := aString
]

{ #category : #initialization }
OPUMLImage >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLImage >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Image put: self.
]

{ #category : #accessing }
OPUMLImage >> location [
	"This contains a location that can be used by a tool to locate the image as an alternative to embedding it in the stereotype."
	^ location
]

{ #category : #accessing }
OPUMLImage >> location: aString [
	"This contains a location that can be used by a tool to locate the image as an alternative to embedding it in the stereotype."
	location := aString
]

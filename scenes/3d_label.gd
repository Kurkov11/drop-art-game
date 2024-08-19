

extends Sprite3D

@export var text:String

# Called when the node enters the scene tree for the first time.
func _ready():
	$LabelViewport/Label.text = text

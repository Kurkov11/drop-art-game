extends Node3D

@onready var view_camera = $Camera3D
var top_down_params = {
	"pos": Vector3(0 , 5.5, 9.6),
	"rot": Vector3(-17.5, 0, 0)
}

func set_rotating(newValue):
	set_process(newValue)

func _ready():
	update_params(top_down_params)
	


func update_params(obj):
	view_camera.position = obj.pos
	view_camera.rotation_degrees = obj.rot
	

func set_view(view_index):
	rotation_degrees.y = 90 * view_index
	

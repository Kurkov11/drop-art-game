extends Node3D

const START_SCENE = preload("res://scenes/start_scene.tscn")
const ENTER_DETAILS_SCENE = preload("res://scenes/enter_details_scene.tscn")

@onready var spawn_scene = $SpawnScene
@onready var current_scene = $EnterDetailsScene
	
	
var spawner_rotation_deg = 0
func _on_enter_details_scene_spawn_shape(posX:int, posZ:int, size:Vector3):
	spawn_scene.spawn_shape_top(posX, posZ, size)


func _on_enter_details_scene_view_changed(viewIndex):
	$SpawnScene.set_camera_view(viewIndex)
	

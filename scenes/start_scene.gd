extends Node3D
signal cutscene_end

var current_view = 'side'

func spawn_shape_top(posX, posY, size:Vector3):
	$TopSpawner.spawn_shape(posX, posY, size)
	
	
func set_camera_view(newIndex):
	$CameraHolder.set_view(newIndex)
	$TopSpawner.update_modifiers_from_index(newIndex)

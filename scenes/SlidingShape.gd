extends Area3D

var current_speed = 5
var highest_collision_point = 0

@onready var drop_player:AudioStreamPlayer3D = $DropPlayer
var hit_paths = ["res://assets/music/simon13666/WingFlap/WingFlap2.wav","res://assets/music/simon13666/WingFlap/WingFlap3.wav","res://assets/music/simon13666/WingFlap/WingFlap4.wav","res://assets/music/simon13666/WingFlap/WingFlap6.wav"]

func _process(delta):
	if highest_collision_point == 0:
		highest_collision_point = $FallPointDetector.get_highest_collision_point()
	
	if position.y - 4 - current_speed * delta <= highest_collision_point:
		#is just about to hit
		$DropParticles.explode()
		drop_player.stream = load(hit_paths[randf_range(0, hit_paths.size())])
		drop_player.play()
	if position.y - $MeshInstance3D.mesh.size.y / 2 - current_speed * delta <= highest_collision_point:
		#Shape hit the ground
		current_speed = 0
		position.y = highest_collision_point + $MeshInstance3D.mesh.size.y / 2
		set_process(false)
	
	position.y -= current_speed * delta
	current_speed *= 1.02

func set_size(size:Vector3):
	print("SETTING size", self)
	$CollisionShape3D.shape.size = size
	$MeshInstance3D.mesh.size = size
	$FallPointDetector/CollisionShape3D.shape.size.x = $MeshInstance3D.mesh.size.x - 0.05 #Detector should have a little margin to preven accidental detections
	$FallPointDetector/CollisionShape3D.shape.size.z = $MeshInstance3D.mesh.size.z - 0.05 #Detector should have a little margin to preven accidental detections
	print("After setting ", $CollisionShape3D.shape, $FallPointDetector/CollisionShape3D.shape)
	
	
	$MeshInstance3D.mesh.material.albedo_color = Color.RED


func get_top_global_position():
	return global_position.y + $MeshInstance3D.mesh.size.y / 2

func get_bottom_global_position():
	return position.y - $MeshInstance3D.mesh.size.y / 2

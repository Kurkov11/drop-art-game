extends Node3D

var sliding_shape = preload("res://scenes/sliding_shape.tscn")

var x_modifier = 1
var y_modifier = -1

func set_modifiers(mod1, mod2):
	x_modifier = mod1
	y_modifier = mod2

func spawn_shape(posX, posZ, size):
	
	var instanced_shape = sliding_shape.instantiate()
	
	instanced_shape.set_size(size)
	instanced_shape.global_position = global_position
	instanced_shape.position.x = posX * x_modifier
	instanced_shape.position.z = posZ * y_modifier
	
	$"..".add_child(instanced_shape)
	print(rotation_degrees)
	

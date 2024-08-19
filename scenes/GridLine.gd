extends Node3D

const GRID_LINE = preload("res://scenes/GridLine.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(10): 
		var grid_line_instance = GRID_LINE.instantiate()
		grid_line_instance.position.x = i+1
		add_child(grid_line_instance)
	for i in range(10): 
		var grid_line_instance = GRID_LINE.instantiate()
		grid_line_instance.position.x = -i-1
		add_child(grid_line_instance)
		
	for i in range(10): 
		var grid_line_instance = GRID_LINE.instantiate()
		grid_line_instance.position.z = i+1
		grid_line_instance.rotation_degrees.y = 90
		add_child(grid_line_instance)
	for i in range(10): 
		var grid_line_instance = GRID_LINE.instantiate()
		grid_line_instance.position.z = -i-1
		grid_line_instance.rotation_degrees.y = 90
		add_child(grid_line_instance)

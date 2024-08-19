extends Area3D


var overlapping_areas:Array

func _physics_process(delta):
	overlapping_areas = get_overlapping_areas().filter(func(area): 
		return area != $".." && !area.is_in_group("fall_point_detectors"))
	

func get_highest_collision_point():
	var highest_collision_point = 0
	
	if overlapping_areas.size() > 0:
		for area in overlapping_areas:
			if area.get_top_global_position() > highest_collision_point:
				highest_collision_point = area.get_top_global_position()
		
	return highest_collision_point

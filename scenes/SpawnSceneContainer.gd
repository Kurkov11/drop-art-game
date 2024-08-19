extends SubViewportContainer


func add_to_view_port(new_child):
	$SubViewPort.add_child(new_child)
	
func remove_from_view_port(removed_child):
	$SubViewPort.remove_child(removed_child)

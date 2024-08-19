extends HBoxContainer

signal view_change

func _ready():
	for n in get_children().size():
		get_child(n).connect("pressed", func(): _on_view_button_pressed(n))

func _on_view_button_pressed(index):
	emit_signal("view_change", index)

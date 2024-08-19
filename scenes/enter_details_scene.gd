extends Node2D

signal spawn_shape
signal view_changed

@onready var pos_x_input = $CanvasLayer/HBoxContainer/VBoxContainer/GridContainer/PosXSpinBox
@onready var pos_z_input = $CanvasLayer/HBoxContainer/VBoxContainer/GridContainer/PosYSpinBox
@onready var size_x_input = $CanvasLayer/HBoxContainer/VBoxContainer2/GridContainer/WidthSpinBox
@onready var size_y_input = $CanvasLayer/HBoxContainer/VBoxContainer2/GridContainer/HeightSpinBox
@onready var size_z_input = $CanvasLayer/HBoxContainer/VBoxContainer2/GridContainer/DepthSpinBox


func _on_submit_button_pressed():
	emit_signal("spawn_shape",get_value(pos_x_input), get_value(pos_z_input), Vector3(get_value(size_x_input), get_value(size_y_input), get_value(size_z_input)))

func get_value(input:SpinBox):
	return int(input.value)

func hide_canvas():
	$CanvasLayer.hide()

func show_canvas():
	$CanvasLayer.show()


func _on_view_buttons_view_change(newIndex):
	emit_signal("view_changed", newIndex)

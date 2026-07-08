extends Node

# @export var text_box_scene_path: String = "res://scenes/textbox.tscn"
# var text_box_scene: PackedScene

# var dialog_lines: Array[String] = []
# var current_line_index: int = 0

# var text_box
# var text_box_position: Vector2

# var is_dialog_active: bool = false
# var can_advance_line: bool = false


# func start_dialog(position: Vector2, lines: Array[String]):
# 	if is_dialog_active:
# 		return

# 	dialog_lines = lines
# 	text_box_position = position
# 	is_dialog_active = true
# 	_show_text_box()


# func _show_text_box():
# 	# instantiate the text box scene and add to the scene tree
# 	text_box = text_box_scene.instantiate()
# 	if text_box.has_signal("finished_displaying"):
# 		text_box.finished_displaying.connect(_on_text_box_finished_displaying)
# 	get_tree().root.add_child(text_box)
# 	text_box.global_position = text_box_position
# 	text_box.display_text(dialog_lines[current_line_index])
# 	can_advance_line = false



# func _on_text_box_finished_displaying():
# 	can_advance_line = true
	


# func _unhandled_input(event):
# 	# if event.is_action_pressed("advance_dialog") and can_advance_line and is_dialog_active:
# 	# 	current_line_index += 1
# 	# 	if current_line_index < dialog_lines.size():
# 	# 		text_box.display_text(dialog_lines[current_line_index])
# 	# 		can_advance_line = false
# 	# 	else:
# 	# 		if text_box:
# 	# 			text_box.queue_free()
# 	# 		text_box = null
# 	# 		is_dialog_active = false
# 	# 		can_advance_line = false
# 	# 		current_line_index = 0
# 	if (
# 		event.is_action_pressed("advance_dialog") && is_dialog_active && can_advance_line  
# 	):
# 		if text_box:
# 			text_box.queue_free()
# 		current_line_index += 1
# 		if current_line_index >= dialog_lines.size():
# 			is_dialog_active = false
# 			current_line_index = 0
# 			return 
		
# 		_show_text_box()
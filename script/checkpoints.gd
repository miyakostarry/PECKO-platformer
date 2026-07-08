extends Area2D


func _on_body_entered(_body: Node2D) -> void:
   
	if _body.name == "player":
		print("player entered")
		get_tree().current_scene.get_node("textbox").visible = true


func _on_body_exited(_body: Node2D) -> void:
	get_tree().current_scene.get_node("textbox").visible = false # Replace with function body.

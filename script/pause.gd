extends CanvasLayer

func _ready() -> void:
	hide()
	$settingBTN.hide() # Replace with function body.


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("escape") and get_tree().paused:
		resume()
		
	elif Input.is_action_just_pressed("escape") and not get_tree().paused:
		pause()
		
func resume() -> void:
	get_tree().paused = false
	hide()
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func pause() -> void:
	get_tree().paused = true 
	show()# Replace with function body.




func _on_resume_pressed() -> void:
	resume()
	
	 # Replace with function body.

func _on_backtomenu_pressed() -> void:
	get_tree().paused=false
	get_tree().change_scene_to_file("res://muni.tscn")

func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()
	# Replace with function body.
func _on_quit_pressed():
	get_tree().quit() # Replace with function body.
	# Replace with function body.

func _on_setting_pressed() -> void:
	hide()
	# get_tree().change_scene_to_file("res://setting_btn.tscn") 
	$settingBTN.show()
	# Replace with function body.

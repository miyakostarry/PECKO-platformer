extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass




func _on_music_cc_pressed() -> void:
	Settings.music_on = not Settings.music_on
	MusicManager.update_music()
	if Settings.music_on:
		$musicCC.text = "ON"
		$musicCC.modulate = Color.GREEN
	else:
		$musicCC.text = "OFF"
		$musicCC.modulate = Color.RED

func _on_sfxxx_pressed() -> void:
	

	if Settings.sfx_on:
		Settings.sfx_on = false
		$sfxxx.text = "OFF"
		$sfxxx.modulate = Color.RED
	else:
		Settings.sfx_on = true 
		$sfxxx.text = "ON"
		$sfxxx.modulate = Color.GREEN


func _on_back_pressed() -> void:
	hide()
	get_parent().show() # Replace with function body.

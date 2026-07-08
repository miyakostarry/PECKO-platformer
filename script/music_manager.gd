extends Node


# Called when the node enters the scene tree for the first time.
var player : AudioStreamPlayer2D= null

func set_player(new_player: AudioStreamPlayer2D) -> void:
	player = new_player
	update_music()


func update_music():
	if player == null:
		return 

	if Settings.music_on:
		if !player.playing:
			player.play()

	else:
		if player.playing:
			player.stop()			
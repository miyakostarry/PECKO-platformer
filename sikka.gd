extends Area2D

@onready var game_manager = %gamemanager
#can use %gamemangaer directly to access the gamemanager node and its functions, such as _add_point() but its fine its better to use variable giving it a short name .
func _on_body_entered(_body: Node2D) -> void:
	game_manager._add_point()
	# if _body.name == "player":
	get_parent()._sum()
	$audio.play()
	await get_tree().create_timer(0.15).timeout

	queue_free()

# Called when the node enters the scene tree for the first time.
# func _ready() -> void:
# 	print("coin boss")
# 	#pass # Replace with function body.


# # Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
# 	pass

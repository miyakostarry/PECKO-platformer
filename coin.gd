extends Node
@onready var player = %player

var coin =0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var total_coin= 23

func _sum():
	coin += 1
	
	if coin == total_coin:
		print("winnnnner")
		%congrts.text = "Ta-Da!"
		
		# var player = get_tree().current_scene.get_node("player")
		player.auto_jump = true

		await get_tree().create_timer(5.0).timeout

		get_tree().change_scene_to_file("res://muni.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

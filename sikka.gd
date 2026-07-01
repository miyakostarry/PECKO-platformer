extends Area2D

func _on_body_entered(_body: Node2D) -> void:
    
    queue_free()


# Called when the node enters the scene tree for the first time.
# func _ready() -> void:
# 	print("coin boss")
# 	#pass # Replace with function body.


# # Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
# 	pass

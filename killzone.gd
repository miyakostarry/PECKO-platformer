extends Area2D

@onready var timer = $Timer

# Replace with function body.

func _on_body_entered(_body: Node2D) -> void:
    print("dead")
    Engine.time_scale = 0.5

    # if _body.name == "player"  and _body.has_node("AnimatedSprite2D"):
    _body.dead = true
    if Settings.sfx_on:
        $hurt.play()
    _body.get_node("AnimatedSprite2D").play("die")
    # _body.velocity = Vector2.ZERO
    _body.get_node("CollisionShape2D").queue_free()
    timer.start()


func _on_timer_timeout() -> void:
    Engine.time_scale = 1.0
    get_tree().reload_current_scene()

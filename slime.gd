extends Node2D

const SPEED = 50
var direction = 1

@onready var ray_R =$RayCastright
@onready var ray_l = $RayCastleft
@onready var animate = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	# position.x += SPEED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if ray_R.is_colliding():
		direction =-1
		animate.flip_h=true
	if ray_l.is_colliding():
		direction =1
		animate.flip_h=false



	position.x += direction *SPEED * _delta
	# pass

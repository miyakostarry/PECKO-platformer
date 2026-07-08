extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -270

var auto_jump = false
var dead = false

@onready var ani=$AnimatedSprite2D


func _physics_process(delta: float) -> void:

	if dead:
		velocity.x =0
		velocity.y += get_gravity().y * delta
		move_and_slide()
		return
	# Add the gravity.


	if not is_on_floor():
		velocity += get_gravity() * delta


	if auto_jump:
		if is_on_floor():
			velocity.y= JUMP_VELOCITY	


	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_L", "move_R")

	if direction >0:
		ani.flip_h = false
	if direction <0:
		ani.flip_h = true	

	if is_on_floor():
		if direction ==0:
			ani.play("idle")
		else:
			ani.play("run")

	else:
		ani.play("jump")




	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

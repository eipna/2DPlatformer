extends CharacterBody2D

const SPEED: int = 80.0
const JUMP_VELOCITY: int = -260.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	if not is_on_floor():
		$AnimatedSprite2D.play("jump")
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$Jump.play()

	var direction = Input.get_axis("move_left", "move_right")
	
	if direction < 0:
		$AnimatedSprite2D.flip_h = true
	elif direction > 0:
		$AnimatedSprite2D.flip_h = false
		
	if is_on_floor():
		if direction == 0:
			$AnimatedSprite2D.play("idle")
		else:
			$AnimatedSprite2D.play("run")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

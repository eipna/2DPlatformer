extends Node2D

const SPEED: int = 80
var direction: int = 1
var slime_points: int = 0

@onready var game_manager = %GameManager
@export var particle = CPUParticles2D

func _process(delta):
	
	if $RayCastRight.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = true
	elif $RayCastLeft.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = false
	
	position.x += direction * SPEED * delta

func _on_explode_trigger_body_entered(body):
	$CPUParticles2D.emitting = true
	game_manager.add_slime_point()
	$AnimationPlayer.play("explode")

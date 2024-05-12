extends Node2D

const SPEED = 60
var direction = 1
var slime_points = 0

@onready var game_manager = %GameManager
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer

func _process(delta):
	
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	elif ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * SPEED * delta

func _on_explode_trigger_body_entered(body):
	game_manager.add_slime_point()
	animation_player.play("explode")

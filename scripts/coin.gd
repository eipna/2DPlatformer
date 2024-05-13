extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body):
	$CPUParticles2D.emitting = true
	game_manager.add_point()
	$AnimationPlayer.play("pickup")

extends Area2D

@export var target_level = PackedScene

func _on_body_entered(body):
	Engine.time_scale = 0.5
	$AnimationPlayer.play("transition")
	$Timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_packed(target_level)

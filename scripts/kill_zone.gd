extends Area2D

func _on_body_entered(body):
	$Death.play()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	$Timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()

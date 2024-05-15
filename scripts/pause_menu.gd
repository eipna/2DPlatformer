extends Control
var is_paused: bool = false

func _ready():
	hide()

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		if is_paused:
			_on_resume_pressed()
		elif !is_paused:
			pause()

func pause():
	get_tree().paused = true
	show()
	is_paused = true

func resume():
	get_tree().paused = false
	hide()
	is_paused = false

func _on_resume_pressed():
	resume()

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_quit_pressed():
	get_tree().quit()


func _on_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

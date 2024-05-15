extends Node

var points: int = 0
var slime_points: int = 0

func add_slime_point():
	slime_points += 1
	$CanvasLayer/ScorePanel/SlimesPanel/SlimesText.text = "SLIMES: " + str(slime_points)

func add_point():
	points += 1
	$CanvasLayer/ScorePanel/ScoreText.text = "COINS: " + str(points)

func _on_button_pressed():
	$CanvasLayer/PauseMenu.pause()

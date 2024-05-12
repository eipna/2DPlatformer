extends Node

var points = 0
@onready var score_text = %ScoreText

func add_point():
	points += 1
	score_text.text = "COINS: " + str(points)

extends Node

var points = 0
var slime_points = 0

@onready var score_text = %ScoreText
@onready var slimes_text = %SlimesText

func add_slime_point():
	slime_points += 1
	slimes_text.text = "SLIMES: " + str(slime_points)

func add_point():
	points += 1
	score_text.text = "COINS: " + str(points)

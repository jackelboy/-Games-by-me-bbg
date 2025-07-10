
extends Node


var score = 0
@onready var ending: Label = $Ending


func add_point():
	score += 1
	ending.text = str(score) + " COINS"

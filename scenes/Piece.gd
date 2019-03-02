extends Node2D

export (String) var color

var move_tween

func _ready():
	move_tween = get_node("move_tween")
	#move_tween = &move_tween

func move(target):
	move_tween.interpolate_property(self, "position", position, target, .3, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	move_tween.start()
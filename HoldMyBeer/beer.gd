extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Area2D_body_entered(body):
	globals.lost += 1
	globals.current -= 1
	#$"GUI/Label".text = str(lost)
	body.queue_free()
	#if lost == beer_globals.total:
	if globals.current <= 0:
		_go_to_end_screen()
				
func _go_to_end_screen():
		get_tree().change_scene("res://EndScreen.tscn")

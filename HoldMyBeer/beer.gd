extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$"GUI/Label".text = str(beer_globals.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	beer_globals.score += delta*beer_globals.current
	$"GUI/Label".text = str(beer_globals.score)

func _on_Area2D_body_entered(body):
	beer_globals.lost += 1
	beer_globals.current -= 1
	#$"GUI/Label".text = str(lost)
	body.queue_free()
	#if lost == beer_globals.total:
	if beer_globals.current <= 0:
		#TODO: trigger gameover
		#get_tree().change_scene_to()
		#get_parent().wyswietl_game_over()
		get_tree().reload_current_scene()
		pass

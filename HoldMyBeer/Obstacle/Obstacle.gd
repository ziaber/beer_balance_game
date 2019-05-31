extends Area2D
class_name Obstacle

var ones = [-1, 1]

func _ready():
	pass # Replace with function body.
func _process(delta):
	position.y += globals.speed * delta
	
	
func _on_player_entered(body):
	if body is Player:
		get_tree().change_scene("res://EndScreen.tscn")
#		globals.speed -= 200
#
#		if body.velocity.x != 0:
#			globals.glass_rotation += body.velocity.x
#		else:
#			globals.glass_rotation += ones[randi()%2] * globals.max_speed * 0.05

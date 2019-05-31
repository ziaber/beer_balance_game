extends Area2D
class_name Obstacle

func _ready():
	pass # Replace with function body.
func _process(delta):
	position.y += globals.speed * delta
	
	
func _on_player_entered(body):
	if body is Player:
		globals.speed -= 200
		if body.velocity.x != 0:
			globals.glass_rotation += body.velocity.x/5
		else:
			globals.glass_rotation += body.velocity.y/5

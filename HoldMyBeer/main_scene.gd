extends Node2D

var distance = 0.0
var obstacle_object = load("res://Obstacle/Obstacles_factory.tscn").instance()
var next_obstacle_distance = 10
var nav_x_position_choices = []
func _ready():
	globals.score = 0;
	var width = 288
	for i in [1, 3, 5]:
		nav_x_position_choices.append(i * width/6)

func _process(delta):
	globals.speed = lerp(globals.speed, globals.max_speed, 0.01)
	
	distance += globals.speed * delta * 0.03
	globals.score += globals.current * 0.1 * globals.speed * delta * 0.03
	
	$GUI/Distance.text = "Distance: " + str(floor(distance)) + "\nScore: " + str(floor(globals.score))
	
	if int(distance) == next_obstacle_distance:
		var new_obstacle = obstacle_object.get_obstacle() as Obstacle
		new_obstacle.scale = Vector2(2,2)
		new_obstacle.position = Vector2(nav_x_position_choices[randi() % 3], -100)
		add_child(new_obstacle)
		next_obstacle_distance += 15

extends Node2D

var distance = 0.0
var obstacle_object = load("res://Obstacle/Obstacles_factory.tscn").instance()
var next_obstacle_distance = 10
func _ready():
	pass # Replace with function body.

func _process(delta):
	globals.speed = lerp(globals.speed, globals.max_speed, 0.01)
	distance += globals.speed * delta * 0.03
	$GUI/Distance.text = "Distance: " + str(floor(distance))
	
	if int(distance) == next_obstacle_distance:
		var new_obstacle = obstacle_object.get_obstacle() as Obstacle
		new_obstacle.scale = Vector2(2,2)
		new_obstacle.position = Vector2(rand_range(0, ProjectSettings.get_setting("display/window/size/width")), -40)
		add_child(new_obstacle)
		print("spawned")
		next_obstacle_distance += 5

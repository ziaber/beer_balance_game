extends Node
class_name Obstacles_factory

func get_obstacle():
	return get_child(randi()%get_child_count()).duplicate()
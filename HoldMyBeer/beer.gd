extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lost = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$"GUI/Label".text = str(lost)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	lost += 1
	$"GUI/Label".text = str(lost)
	body.queue_free()

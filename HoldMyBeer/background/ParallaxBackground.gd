extends ParallaxBackground

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
var offsetLoc = 0
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offsetLoc = offsetLoc + 1
	self.set_scroll_offset(Vector2(0, offsetLoc))

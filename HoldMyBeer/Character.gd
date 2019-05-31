extends KinematicBody2D
class_name Player
var velocity = Vector2()

func get_input():
#    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        velocity.y -= 1
    velocity = velocity.normalized() 

func _physics_process(delta):
    get_input()
    move_and_slide(velocity* 200)

func _process(delta): 
	globals.glass_rotation -= velocity.x/10;
#ROTATING BEER ON WALL COLLISIONS
#	for i in get_slide_count():
#    var collision = get_slide_collision(i)
#    globals.glass_rotation += collision.normal.x/100

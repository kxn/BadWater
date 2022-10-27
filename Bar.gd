extends RigidBody2D



var action = 0
var up_speed:int = 50
var rotate_speed:float = 0.8
var pos:Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if not event.is_pressed():
			action = 0
		else:
			action = event.position.x - get_viewport_rect().size.x / 2
		
func _process(delta):
	if action < 0:
		rotate(delta * rotate_speed)
		translate(Vector2.UP * delta * up_speed)
	elif action > 0:
		rotate(-delta * rotate_speed)
		translate(Vector2.UP * delta * up_speed)
		
		

extends CharacterBody2D
const MAX_SPEED = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var direction:Vector2 = self.get_movement_vector().normalized()
	self.velocity = direction * MAX_SPEED
	var tmp = move_and_slide()
	
func get_movement_vector():
	var movement_vector:Vector2 = Vector2.ZERO
	var x_movement:float = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_movement:float = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	movement_vector.x = x_movement
	movement_vector.y = y_movement
	# return movement_vector.normalized()
	return movement_vector

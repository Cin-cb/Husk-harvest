extends RigidBody2D


var hp = 100

const SPEED = 120

func _process(delta: float) -> void:
	
	if Input.is_action_pressed("RotateLeft"):
		apply_torque(SPEED * -10)
	if Input.is_action_pressed("RotateRight"):
		apply_torque(SPEED * 10)
	
	
	if Input.is_action_pressed("Down"):
		apply_central_force(Vector2(0, SPEED).rotated(rotation))
	if Input.is_action_pressed("Up"):
		apply_central_force(Vector2(0, SPEED * -1).rotated(rotation))
	if Input.is_action_pressed("Left"):
		apply_central_force(Vector2(SPEED * -1, 0).rotated(rotation))
	if Input.is_action_pressed("Right"):
		apply_central_force(Vector2(SPEED * 1, 0).rotated(rotation))
	
	

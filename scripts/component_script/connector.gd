extends Area2D

var joint: PinJoint2D
var max_force = 1200.0


#

func _on_body_entered(body: Node2D) -> void:
	if "Wall" in body.name or "wall" in body.name:
		print("connect")
		joint = PinJoint2D.new()
		joint.node_a = get_parent().get_path()
		joint.node_b = body.get_path()
		joint.position = Vector2.ZERO 
		
		joint.bias = 0.8
		joint.softness = 0.0
		
		get_parent().get_parent().add_child(joint)

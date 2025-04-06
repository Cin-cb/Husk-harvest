extends ColorRect

@export var speed = 0.1
var speedup = false

func _process(delta: float) -> void:
	rotation += 0.1 * speed
	$anom.rotation += 0.1 * speed
	$anom/anom.rotation += 0.1 * speed


func _on_timer_timeout() -> void:
	speedup = not speedup
	if speedup :
		speed *= 2
	else :
		speed /=2

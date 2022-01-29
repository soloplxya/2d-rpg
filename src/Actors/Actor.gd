extends KinematicBody2D
class_name Actor 

func _physics_process(delta: float) -> void:
	# move 300 pixels per second on the x axis
	var velocity: = Vector2(300, 0)
	move_and_slide(velocity)
	

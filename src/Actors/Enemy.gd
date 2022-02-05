extends "res://src/Actors/Actor.gd"

func _ready() -> void: 
	set_physics_process(false)
	velocity.x = -speed.x 
	
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if is_on_wall(): 
		print("here")
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity, Vector2.UP).y

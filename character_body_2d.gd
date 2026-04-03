extends CharacterBody2D
func _physics_process(delta: float) -> void:
	move_and_slide()
	for i in get_slide_collision_count():
		var body = get_slide_collision(i).get_collider()
		if body is RigidBody2D:
			body.apply_central_impulse()

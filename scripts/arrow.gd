extends CharacterBody2D

const speed = 200
var vel = Vector2(speed, 0)

func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(vel * delta)

	if collision_info and is_instance_valid(collision_info.get_collider()):
		if collision_info.get_collider().name == "SnowWhite":
			# reduce affection meter
			queue_free()

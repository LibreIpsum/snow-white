extends CharacterBody2D

@export var snowWhite: CharacterBody2D
const ARROW_SCENE = preload("res://arrow.tscn")

const MIN_DELAY = 1.5
const MAX_DELAY = 3
var timer = 0
var currentDelay = randf_range(MIN_DELAY, MAX_DELAY)

func _process(delta: float) -> void:
	position.y = snowWhite.position.y

	timer += delta
	if (timer > currentDelay):
		timer = 0
		currentDelay = randf_range(MIN_DELAY, MAX_DELAY)
		_shootArrow()

	pass #

func _shootArrow() -> void: 
	var arrowObject = ARROW_SCENE.instantiate()
	
	arrowObject.position = $Marker2D.global_position
	get_tree().current_scene.add_child(arrowObject);

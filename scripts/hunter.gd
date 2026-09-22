extends CharacterBody2D

@export var snowWhite: CharacterBody2D

func _process(delta: float) -> void:
    position.y = snowWhite.position.y
    pass #

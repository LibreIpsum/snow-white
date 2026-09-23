extends CharacterBody2D

const speed = 200

func _ready() -> void:
    velocity.x = speed

func _physics_process(delta: float) -> void:
    move_and_slide()
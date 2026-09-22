extends Node2D

const SPEED = 200.0
const WIDTH = 2500
# Called when the node texture.get_size()enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= SPEED * delta
	   
	
	if (position.x < 0 - WIDTH):
		position.x += 2 * WIDTH

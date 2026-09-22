extends Control
@onready var b: RichTextLabel = $Body

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	b.visible_characters = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_anything_pressed():
		b.visible_ratio = 1
		$Timer.stop()
		show_start_button()


func _on_timer_timeout() -> void:
	b.visible_characters += 1
	if b.visible_ratio == 1:
		show_start_button()
		$Timer.stop()

func show_start_button():
	$Button.show()


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://snow-white.tscn")

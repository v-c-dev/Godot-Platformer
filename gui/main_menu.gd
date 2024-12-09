extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	if visible:
		get_tree().paused = false
		get_tree().change_scene_to_file("res://Level_1.tscn")



func _on_options_pressed() -> void:
	if visible:
		get_tree().paused = false
		get_tree().change_scene_to_file("res://gui/OptionsMenu.tscn")


func _on_quit_pressed() -> void:
	if visible:
		get_tree().quit()

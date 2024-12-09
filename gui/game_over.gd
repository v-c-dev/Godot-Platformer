extends Control

func _on_start_pressed() -> void:
	if visible:
		get_tree().paused = false
		get_tree().change_scene_to_file("res://gui/MainMenu.tscn")


func _on_quit_pressed() -> void:
	if visible:
		get_tree().quit()

extends Control

var music_bus = AudioServer.get_bus_index("music")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_voltar_pressed() -> void:
	if visible:
		get_tree().paused = false
		get_tree().change_scene_to_file("res://gui/MainMenu.tscn")


func _on_mute_music_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), toggled_on)


func _on_mute_sfx_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), toggled_on)

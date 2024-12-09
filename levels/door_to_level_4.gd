extends Area2D


@onready var animation_player := $AnimationPlayer as AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body: Node2D) -> void:
	animation_player.play(&"opening")
	$Timer.start()


func _on_body_exited(body: Node2D) -> void:
	animation_player.play(&"Closing")


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://level_4.tscn")

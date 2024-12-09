class_name CoinBackup extends Area2D
## Collectible that disappears when the player touches it.


@onready var animation_player := $AnimationPlayer as AnimationPlayer
@onready var audio = $Pickup


func _on_body_entered(body: Node2D) -> void:
	animation_player.play(&"picked")
	audio.play()
	(body as Player).coin_collected.emit()

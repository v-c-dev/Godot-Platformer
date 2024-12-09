extends ProgressBar


@onready var timer = $Timer
@onready var dmg = $DamageBar


var health = 0 : set = _set_health

func _set_health(new_health):
	var prev_health = health
	health = min(max_value, new_health)
	value = health
	
	if health <= 0:
		queue_free()
	
	if health < prev_health:
		timer.start()
	else:
		dmg.value = health

func init_health(_health):
	health = _health
	max_value = health
	value = health
	dmg.max_value = health
	dmg.value = health


func _on_timer_timeout():
	dmg.value = health

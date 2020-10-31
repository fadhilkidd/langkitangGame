extends ColorRect


func _on_Timer_timeout():
	get_tree().change_scene(str("res://scenes/" + "level1" + ".tscn"))

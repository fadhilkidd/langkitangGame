extends ColorRect

func _on_Timer_timeout():
	get_tree().change_scene(str("res://scenes/" + "credit" + ".tscn"))


func _on_Timer1_timeout():
	$Label.visible = false
	$Label2.visible = true
	$Timer2.start()

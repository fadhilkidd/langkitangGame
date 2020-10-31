extends Area2D

func _on_Area2D3_body_entered(body):
	if Global.companion == 3:
		get_tree().change_scene(str("res://scenes/" + "ending2" + ".tscn"))
	else:
		get_tree().change_scene(str("res://scenes/" + "ending3" + ".tscn"))

extends Area2D

export (String) var sceneName = "level1"

func _on_HitArea_body_entered(body):
	pass
	var current_scene = get_tree().get_current_scene().get_name()
	print(current_scene)
	print(body.get_name())
	if body.get_name() == "Player":
		if current_scene == sceneName:
			Global.lives -= 1
		if Global.lives == 0:
			pass
		else:
			get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))


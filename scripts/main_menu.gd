extends LinkButton

func _on_new_game_btn_pressed():
	get_tree().change_scene(str("res://scenes/" + "level1" + ".tscn"))

func _on_load_game_btn_pressed():
	pass


func _on_BackToMainMenu_pressed():
	get_tree().change_scene(str("res://scenes/" + "Main Menu" + ".tscn"))

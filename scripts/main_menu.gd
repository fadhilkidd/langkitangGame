extends LinkButton

func _on_new_game_btn_pressed():
	Global.lives = 5
	Global.companion = 0
	get_tree().change_scene(str("res://scenes/" + "level1" + ".tscn"))

func _on_load_game_btn_pressed():
	get_tree().change_scene(str("res://scenes/" + "howtoplay" + ".tscn"))


func _on_BackToMainMenu_pressed():
	Global.lives = 5
	Global.switches = 0
	Global.companion = 0
	Global.trapOn = false
	Global.reincarnate = false
	Global.wilreincarnate = false
	get_tree().change_scene(str("res://scenes/" + "Main Menu" + ".tscn"))

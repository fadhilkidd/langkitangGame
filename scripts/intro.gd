extends Area2D



func _on_Area2D_body_entered(body):
	if body.get_name() == 'Player':
		$Label.visible = true

func _on_house2_entered(body):
	if body.get_name() == 'Player':
		if Global.reincarnate:
			get_tree().change_scene(str("res://scenes/" + "level3" + ".tscn"))
		elif Global.companion < 2:
			$Label.visible = true
		else:
			get_tree().change_scene(str("res://scenes/" + "level3" + ".tscn"))

func _on_rumah_hijau_body_entered(body):
	if body.get_name() == 'Player':
		if Global.reincarnate:
			get_tree().change_scene(str("res://scenes/" + "level2" + ".tscn"))
		elif Global.companion < 1:
			$Label6.visible = true
		else:
			get_tree().change_scene(str("res://scenes/" + "level2" + ".tscn"))

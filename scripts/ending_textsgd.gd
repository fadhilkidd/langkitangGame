extends ColorRect

func _on_Timer1_timeout():
	$Label.visible = true
	$Timer2.start()

func _on_Timer2_timeout():
	$Label4.visible = true
	$Timer3.start()

func _on_Timer3_timeout():
	$Label3.visible = true
	$Timer4.start()

func _on_Timer4_timeout():
	$Label5.visible = true
	$Timer5.start()

func _on_Timer5_timeout():
	$Label2.visible = true
	$Timer6.start()

func _on_Timer6_timeout():
	$Label6.visible = true
	$Timer7.start()

func _on_Timer7_timeout():
	$Label7.visible = true
	$Timer8.start()

func _on_Timer8_timeout():
	get_tree().change_scene(str("res://scenes/" + "ending1" + ".tscn"))

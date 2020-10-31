extends Area2D



func _on_Area2D4_body_entered(body):
	if body.get_name() == 'Player':
		Global.trapOn = true

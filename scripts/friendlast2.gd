extends Area2D

func _on_friendlast_body_entered(body):
	if body.get_name() == 'Player':
		$Label.visible = true
		$Sprite.visible = false
		$Sprite2.visible = false
		$Sprite3.visible = false
		Global.companion = 3

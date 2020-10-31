extends Area2D

func _on_friendlast_body_entered(body):
	if body.get_name() == 'Player':
		Global.companion = 3
		$Label.visible = false
		$Sprite.visible = false
		$Sprite2.visible = false
		$Sprite3.visible = false

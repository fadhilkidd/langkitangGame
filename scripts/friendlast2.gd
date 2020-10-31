extends Area2D

func _process(delta):
		if Global.switches == 4:
			$Label.visible = true
			$Sprite.visible = true
			$Sprite2.visible = true
			$Sprite3.visible = true

func _on_friendlast_body_entered(body):
	if body.get_name() == 'Player':
		$Label.visible = false
		$Sprite.visible = false
		$Sprite2.visible = false
		$Sprite3.visible = false

extends Area2D

var isopen = false

func _process(delta):
	if not isopen and Global.reincarnate == false:
		if Global.switches == 4:
			$Label.visible = true
			$Sprite1.visible = true
			$Sprite2.visible = true
			$Sprite3.visible = true
			isopen = true

func _on_friendlast2_body_entered(body):
	if body.get_name() == 'Player':
		$Label.visible = false
		$Sprite1.visible = false
		$Sprite2.visible = false
		$Sprite3.visible = false

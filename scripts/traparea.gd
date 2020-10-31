extends Area2D

func _on_Area2D_body_entered(body):
	if body.get_name() == 'Player':
		$roof.GRAVITY = 5


func _on_Area2D2_body_entered(body):
	if body.get_name() == 'Player':
		$roof2.GRAVITY = 5


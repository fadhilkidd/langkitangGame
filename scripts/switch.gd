extends Area2D

var switched = false

func _input(event):
	if Input.is_action_just_pressed("enter"):
		if switched == false:
			var bodies  = self.get_overlapping_bodies()
			for body in bodies:
				if body.name == "Player":
					saved()

func saved():
	switched = true
	Global.switches += 1
	$successAudio.play()
	$Sprite.flip_h = true

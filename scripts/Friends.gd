extends KinematicBody2D

export (int) var GRAVITY = 1200

var velocity = Vector2()

var saved = false

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	velocity = move_and_slide(velocity)

func _input(event):
	if Input.is_action_just_pressed("enter"):
		var bodies  = $Detector.get_overlapping_bodies()
		for body in bodies:
			if body.name == "Player" and saved == false:
				saved()

func saved():
	saved = true
	Global.companion += 1
	$successAudio.play()
	$AnimatedSprite.play("berdiri")
	$Label.text = """Thank you for saving me!\nPlease let me follow you"""
	$Timer.start()

func _on_Timer_timeout():
	self.visible = false
	$CollisionShape2D.disabled = true
